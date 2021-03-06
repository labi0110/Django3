import string
import random
import time
from django.contrib import auth
from django.shortcuts import render,redirect
from django.urls import reverse
from django.contrib.auth.models import User
from django.http import JsonResponse
from django.core.mail import send_mail
from .forms import LoginForm, RegisterForm,NicknameChangeForm,BindEmailForm,ChangePasswordForm,ForgetPasswordForm
from .models import Profile


def login(request):
    # username =request.POST.get('username','') #无用户名则返回空字符串
    # password=request.POST.get('password','')
    # user = auth.authenticate(request, username=username, password=password)
    # referer=request.META.get('HTTP_REFERER',reverse('home'))
    # if user is not None:
    #     auth.login(request, user)
    #     #成功则跳转回首页
    #     return redirect(referer)
    # else:
    #     return render(request,'error.html',{'message':'用户名或密码不正确  '})

    if request.method =='POST':
        login_form=LoginForm(request.POST)
        if login_form.is_valid():
            user = login_form.cleaned_data['user']
            auth.login(request,user)
            return redirect(request.GET.get('from', reverse('home')))
    else:
        login_form = LoginForm()
    context = {}
    context['login_form'] = login_form
    return render(request, 'login.html', context)

def login_for_modal(request):
    login_form = LoginForm(request.POST)
    data = {}
    if login_form.is_valid():
        user = login_form.cleaned_data['user']
        auth.login(request,user)
        data['status']='SUCCESS'
    else:
        data['status']='ERROR'
    return JsonResponse(data)

def register(request):
    if request.method == 'POST':
        register_form = RegisterForm(request.POST, request=request)
        if register_form.is_valid():
            username = register_form.cleaned_data['username']
            email = register_form.cleaned_data['email']
            password = register_form.cleaned_data['password']
            # 创建用户
            user = User.objects.create_user(username, email, password)
            user.save()
            #清除session
            del request.session['register_code']
            # 登录用户
            user = auth.authenticate(username=username, password=password)
            auth.login(request, user)
            return redirect(request.GET.get('from', reverse('home')))
    else:
        register_form = RegisterForm()

    context = {}
    context['register_form'] = register_form
    return render(request, 'register.html', context)

def logout(request):
    auth.logout(request)
    return redirect(request.GET.get('from', reverse('home')))

def user_info(request):
    context={}

    return render(request,'user_info.html',context)

def change_nickname(request):
    redirect_to = request.GET.get('from',reverse('home'))
    if request.method == 'POST':
        form=NicknameChangeForm(request.POST,user=request.user)
        if form.is_valid():
            nickname_new= form.cleaned_data['nickname_new']
            profile,created=Profile.objects.get_or_create(user=request.user) #返回profile对象和，是否创建
            profile.nickname=nickname_new
            profile.save()
            return redirect(redirect_to)
    else:
        form =NicknameChangeForm()

    context={}
    context['form']=form
    context['page_title']='修改昵称'
    context['form_title']='修改昵称'
    context['submit_text']='修改'
    context['return_back_url']=redirect_to
    return render(request,'form.html',context)

def bind_email(request):
    redirect_to = request.GET.get('from', reverse('home'))
    if request.method == 'POST':
        form = BindEmailForm(request.POST, request=request)
        if form.is_valid():
            email=form.cleaned_data['email']
            request.user.email= email
            request.user.save()
            #清除session
            del request.session['bind_email_code']
            return redirect(redirect_to)
    else:
        form = BindEmailForm()

    context = {}
    context['form'] = form
    context['page_title'] = '绑定邮箱'
    context['form_title'] = '绑定邮箱'
    context['submit_text'] = '绑定'
    context['return_back_url'] = redirect_to
    return render(request, 'bind_email.html', context)

def send_verification_code(request):
    email = request.GET.get('email','') #传参数进来
    send_for = request.GET.get('send_for','')
    data={}
    if email!='':
        #生成验证码
        code=''.join(random.sample(string.ascii_letters+string.digits,4))
        #将发送的验证码存储在session中，默认有效期限是两周
        now=int(time.time()) #取当前时间数
        send_code_time=request.session.get('send_code_time',0)  #记录发送时间
        if now-send_code_time <30:
            data['status']='ERROR'
        else:
            request.session[send_for] = code
            request.session['send_code_time'] =now

            #发送验证码
            send_mail(
                '绑定邮箱',
                '验证码：%s'% code ,
                'jiayue0110@gmail.com',
                [email],
                fail_silently=False,
            )
            data['status']='SUCCESS'
    else:
        data['status']='ERROR'
    # print(data)
    return JsonResponse(data)

def change_password(request):
    redirect_to = reverse('home')
    if request.method == 'POST':
        form=ChangePasswordForm(request.POST,user=request.user)
        if form.is_valid():
            user=request.user
            old_password=form.cleaned_data['old_password']
            new_password=form.cleaned_data['new_password']
            user.set_password(new_password)#用set password保存密码，django通过特殊方式对密码加密
            user.save()
            auth.logout(request)#登出操作
            return redirect(redirect_to)
    else:
        form =ChangePasswordForm()

    context={}
    context['form']=form
    context['page_title']='修改密码'
    context['form_title']='修改密码'
    context['submit_text']='修改'
    context['return_back_url']=redirect_to
    return render(request,'form.html',context)

def forget_password(request):
    redirect_to =  reverse('login')
    if request.method == 'POST':
        form = ForgetPasswordForm(request.POST, request=request)
        if form.is_valid():
            email=form.cleaned_data['email']
            new_password=form.cleaned_data['new_password']
            user=User.objects.get(email=email)
            user.set_password(new_password)
            user.save()
            del request.session['forget_password_code']
            return redirect(redirect_to)
    else:
        form = ForgetPasswordForm()

    context = {}
    context['form'] = form
    context['page_title'] = '重置密码'
    context['form_title'] = '重置密码'
    context['submit_text'] = '重置'
    context['return_back_url'] = redirect_to
    return render(request, 'forget_password.html', context)


