from django.urls import path
from .import views


urlpatterns = [
    path('',views.blog_list,name="blog_list"),
    path('<int:blog_pk>',views.blog_detail,name ='blog_detail' ),
    path('category/<int:blogs_with_category>',views.blogs_with_category,name='blogs_with_category'),
    path('date/<int:year>/<int:month>',views.blogs_with_date,name='blogs_with_date'),

]