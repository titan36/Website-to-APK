from django.db import models
from django.contrib.auth.models import User
from PIL import Image
class ApkInfo(models.Model):
	creator = models.ForeignKey(User, on_delete=models.CASCADE)
	app_name = models.CharField(max_length=50)
	package_name = models.CharField(max_length=100, unique=True)
	title_activity_home = models.CharField(max_length=50)
	logo = models.ImageField(upload_to='logo', null=True, blank=True)
	splash_screen = models.ImageField(upload_to='splash_screen', null=True, blank=True)
	email = models.EmailField()
	website_url = models.URLField(max_length=500)
	created_at = models.DateTimeField(auto_now_add=True)
	status = models.BooleanField(default=False)

	def __str__(self):
		return self.app_name
	def save(self):
		super().save()
		logoimg = Image.open(self.logo.path)
		if logoimg.height > 500 or logoimg.width > 500:
			size = (500, 500)
			logoimg.thumbnail(size)
			logoimg.save(self.logo.path)	
