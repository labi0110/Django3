from django.contrib import auth
from django.shortcuts import render,redirect
from django.urls import reverse
# from django.contrib.auth.models import User
from django.http import JsonResponse
from .forms import LoginForm, RegisterForm
from django.contrib.auth import get_user_model

User=get_user_model()


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
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            username = register_form.cleaned_data['username']
            email = register_form.cleaned_data['email']
            password = register_form.cleaned_data['password']
            # 创建用户
            user = User.objects.create_user(username, email, password)
            user.save()
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