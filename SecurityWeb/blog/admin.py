from django.contrib import admin
from .models import BlogCategory,Blog
# Register your models here.


@admin.register(BlogCategory)
class BlogCategoryAdmin(admin.ModelAdmin):
    list_display = ('id','category_name')

@admin.register(Blog)
class BlogAdmin(admin.ModelAdmin):
    list_display = ('id','title','blog_category','author','get_read_num','created_time','last_updated_time')

'''@admin.register(ReadNum)
class ReadNum(admin.ModelAdmin):
    list_display=('read_num','blog')
'''