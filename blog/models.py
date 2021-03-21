from django.db import models
from django.db.models.fields import exceptions
from django.contrib.auth.models import User
from django.contrib.contenttypes.fields import GenericRelation
from ckeditor_uploader.fields import RichTextUploadingField
from django.urls import reverse
from django.contrib.contenttypes.models import ContentType
from read_statistics.models import ReadNumExpandMethod,ReadDetail

# Create your models here.


class BlogCategory(models.Model): #定义博客类型
    category_name = models.CharField(max_length=15)
    def __str__(self):
        return self.category_name



class Blog(models.Model,ReadNumExpandMethod ):
    id = models.AutoField(primary_key=True)
    title = models.CharField(max_length=50)  #标题限制长度为50
    blog_category = models.ForeignKey(BlogCategory,on_delete=models.CASCADE,default=1)
    read_details = GenericRelation(ReadDetail)
    content = RichTextUploadingField()
    author = models.ForeignKey(User,on_delete=models.CASCADE)
    created_time=models.DateTimeField(auto_now_add=True)
    last_updated_time = models.DateTimeField(auto_now=True)

    #创建一个与下面ReadNum对应的方法

    def get_url(self):
        return reverse('blog_detail',kwargs={"blog_pk":self.pk})

    def get_email(self):
        return  self.author.email



    def __str__(self):
        return '<Blog:%s>' %self.title

    class Meta:
        ordering=['-created_time']






