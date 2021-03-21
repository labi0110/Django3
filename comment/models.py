import threading
from django.db import models
from django.core.mail import send_mail
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericRelation,GenericForeignKey
from django.contrib.auth.models import User
from django.conf import settings
from django.shortcuts import render

class SendMail(threading.Thread):
    def __init__(self,subject,text,email,fail_silently=False):
        self.subject=subject
        self.text=text
        self.email=email
        self.fail_silently=fail_silently
        threading.Thread.__init__(self)

    def run(self):
        send_mail(
            self.subject,
            '',
            settings.EMAIL_HOST_USER,
            [self.email],
            fail_silently=self.fail_silently,
            html_message=self.text
        )

# Create your models here.
class Comment(models.Model):
    #评论对象
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')

    #评论内容
    text = models.TextField()
    comment_date = models.DateTimeField(auto_now_add=True)
    user= models.ForeignKey(User,related_name='comment',on_delete= models.DO_NOTHING)

    root = models.ForeignKey('self',null=True,related_name='root_comment',on_delete=models.CASCADE)
    parent = models.ForeignKey('self',related_name='parent_comment',null=True,on_delete=models.CASCADE)
    reply_to = models.ForeignKey(User,related_name='replies',null=True,on_delete=models.CASCADE )

    def send_mail(self):

        #发邮件通知
        if self.parent is None:
            #评论我的博客
            subject="有人评论你的博客"
            email= self.content_object.get_email()
        else:
            #回复评论
            # 发送验证码
            subject="有人评论你的评论"
            email= self.reply_to.email
        if email !="":
            context={}
            context["comment_text"]=self.text
            context["url"] =self.content_object.get_url()
            text =render(None,'send_mail.html',context).content.decode('utf-8')
            send_mail=SendMail(subject,text,email)
            send_mail.start()

    def __str__(self):
        return self.text

    class META:
         ordering =['-comment_date']

