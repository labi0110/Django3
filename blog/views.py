from django.shortcuts import render,get_object_or_404
from django.contrib.contenttypes.models import ContentType
from django.core.paginator import Paginator
from django.conf import settings
from django.db.models import Count
from .models import Blog,BlogCategory
from read_statistics.models import ReadNum
from read_statistics.utilis import read_statistics_once_read
from datetime import datetime

from user.forms import LoginForm

# Create your views here.



def get_blog_list_common_data(request,blogs_all_list):
    page_num = request.GET.get('page', 1)
    paginator = Paginator(blogs_all_list, settings.BLOGS_NUMBER_EACH_PAGE)
    page_of_blogs = paginator.get_page(page_num)
    current_page_num = page_of_blogs.number  # 获取当前页
    page_range = list(range(max(current_page_num - 2, 1), current_page_num)) + \
                 list(range(current_page_num, min(paginator.num_pages, current_page_num + +2) + 1))

    # 加上页码间省略号
    if page_range[0] - 1 >= 2:
        page_range.insert(0, "...")
    if paginator.num_pages - page_range[-1] >= 2:
        page_range.append("...")
    # 加上首页和尾页
    if page_range[0] != 1:
        page_range.insert(0, 1)
    if page_range[-1] != paginator.num_pages:
        page_range.append(paginator.num_pages)

    # 获取博客分类对应的博客数量
    '''
    blog_categorys = BlogCategory.objects.all()
    blog_categorys_list=[]
    for blog_category in blog_categorys:
        blog_category.blog_count=Blog.objects.filter(blog_category=blog_category).count()
        blog_categorys_list.append(blog_category)
    '''
    #获取日期归档对应的博客
    # blog_dates = Blog.objects.dates('created_time', 'month', order='DESC').\
    #                             annotate(blog_count =Count('created_time'))
    # blog_dates_dict={}
    # for blog_date in blog_dates[::2]:

    blog_dates = Blog.objects.dates('created_time', 'month', order='ASC')
    blog_dates_dict={}
    for blog_date in blog_dates:
        blog_count=Blog.objects.filter(created_time__year=blog_date.year,
                                       created_time__month=blog_date.month).count()
        blog_dates_dict[blog_date]=blog_count



    context = {}
    context['blogs'] = page_of_blogs.object_list
    context['page_of_blogs'] = page_of_blogs
    context['blog_categorys'] = BlogCategory.objects.annotate(blog_count=Count('blog')) #每个blog_category都有blog_count这个属性
    context['page_range'] = page_range
    context['blog_dates'] = blog_dates_dict
    return context

def blog_list (request):
    blogs_all_list=Blog.objects.all()
    context=get_blog_list_common_data(request,blogs_all_list)
    return render(request,'blog_list.html',context)

def blogs_with_category(request,blogs_with_category):
    blog_category=get_object_or_404(BlogCategory,pk=blogs_with_category)
    blogs_all_list = Blog.objects.filter(blog_category=blog_category)

    context=get_blog_list_common_data(request,blogs_all_list)
    context['blog_categorys']=BlogCategory.objects.all()
    return render(request, 'blogs_with_category.html', context)

def blogs_with_date(request,year,month):
    blogs_all_list = Blog.objects.filter(created_time__year=year,created_time__month=month)
    context = get_blog_list_common_data(request,blogs_all_list)
    return render(request, 'blogs_with_date.html', context)

def blog_detail(request,blog_pk):
    blog = get_object_or_404(Blog, pk=blog_pk)
    read_cookie_key= read_statistics_once_read(request,blog)

    context={}
    context['previous_blog']=Blog.objects.filter(created_time__gt= blog.created_time).last()
    context['next_blog'] =Blog.objects.filter(created_time__lt=blog.created_time).first()
    context['blog']=blog
    response  = render(request,'blog_detail.html', context)#x响应
    response.set_cookie(read_cookie_key,'true') #阅读cookie标记
    return response