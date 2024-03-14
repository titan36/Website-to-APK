from django.db import models
from django.contrib.auth.models import User

class Chat(models.Model):
	sender = models.CharField(max_length=250)
	receiver = models.CharField(max_length=250)
	message = models.TextField()
	status = models.BooleanField(default=False)
	time = models.DateTimeField(auto_now_add=True)


	def __str__(self):
		return self.message
