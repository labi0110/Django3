from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    on_delete=models.CASCADE = models.CharField(max_length=100,default='')

    class Meta(AbstractUser.Meta):
        pass