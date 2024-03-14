from django.db import models
from django.contrib.auth.models import User
from PIL import Image

class ProfilePic(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	image = models.ImageField(default='default.png', upload_to='profile_pictures', blank=True)

	def __str__(self):
		return self.user.username
	def save(self):
		super().save()
		img = Image.open(self.image.path)
		if img.height > 200 or img.width > 200:  # Corrected here
			size = (200, 200)
			img.thumbnail(size)
			img.save(self.image.path)
