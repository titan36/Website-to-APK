from django.db import models

class ContactUs(models.Model):
	name = models.CharField(max_length=250)
	email = models.EmailField(max_length=250)
	subject = models.CharField(max_length=250)
	message = models.TextField()
	ip_address = models.GenericIPAddressField(null=True)
	date = models.DateTimeField(auto_now_add=True)
	status = models.BooleanField(default=False)

	def __str__(self):
		return self.subject
