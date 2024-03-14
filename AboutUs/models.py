from django.db import models
from django.contrib.auth.models import User

class About(models.Model):
	title = models.CharField(max_length=250)
	website = models.URLField(max_length=250)
	designer = models.CharField(max_length=50, blank=True)
	developer = models.CharField(max_length=50, blank=True)
	logo = models.ImageField(upload_to='aboutus', null=True, blank=True)
	background_img = models.ImageField(upload_to='aboutus', null=True, blank=True)
	screenshoot = models.ImageField(upload_to='aboutus', null=True, blank=True)
	address1 = models.CharField(max_length=250, blank=True)
	address2 = models.CharField(max_length=250, blank=True)
	address3 = models.CharField(max_length=250, blank=True)
	address4 = models.CharField(max_length=250, blank=True)
	address5 = models.CharField(max_length=250, blank=True)
	email1 = models.EmailField(max_length=100, blank=True)
	email2 = models.EmailField(max_length=100, blank=True)
	email3 = models.EmailField(max_length=100, blank=True)
	mobile1 = models.CharField(max_length=13, blank=True)
	mobile2 = models.CharField(max_length=13, blank=True)
	mobile3 = models.CharField(max_length=13, blank=True)
	bio = models.TextField(blank=True)
	vision = models.TextField(max_length=10000, blank=True)
	mision = models.TextField(max_length=10000, blank=True)
	
	def __str__(self):
		return self.title
