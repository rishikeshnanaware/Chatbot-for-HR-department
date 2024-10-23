from django.contrib.auth.models import User
from django.db import models


# Create your models here.
class Chat(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    message = models.CharField(max_length=255)
    user = models.ForeignKey(User,on_delete=models.DO_NOTHING,)
    human_bot = models.BooleanField(default=True)
    def __str__(self):
        return self.message
