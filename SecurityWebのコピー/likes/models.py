from django.db import models
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericRelation,GenericForeignKey
# from django.contrib.auth.models import User
from django.conf import settings

# Create your models here.

class LikesCount(models.Model):
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')

    liked_num = models.IntegerField(default=0)
    
class LikesRecord(models.Model):
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')

    user=user= models.ForeignKey(settings.AUTH_USER_MODEL,on_delete= models.DO_NOTHING)
    liked_time =models.DateTimeField(auto_now_add=True)


