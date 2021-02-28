from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

class User(AbstractUser):
    nickname = models.CharField(max_length=100,default='',verbose_name='昵称')



    class Meta(AbstractUser.Meta):
        pass
