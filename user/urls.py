"""SecurityWeb URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static
from. import views

urlpatterns = [
    path('login/', views.login, name='login'),
    path('login_for_modal/', views.login_for_modal, name='login_for_modal'),
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout'),
    path('user_info/', views.user_info, name='user_info'),
    path('change_nickname/',views.change_nickname,name='change_nickname'),
    path('bind_email/',views.bind_email,name='bind_email'),
    path('send_verification_code/',views.send_verification_code,name='send_verification_code'),
    path('change_password/',views.change_password,name='change_password'),
    path('forget_password/',views.forget_password,name='forget_password'),


]

urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)





