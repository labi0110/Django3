from django.db import models
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericRelation,GenericForeignKey
from django.contrib.auth.models import User


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
    def __str__(self):
        return self.text

    class META:
         ordering =['-comment_date']

