from django.contrib import admin
from django.db import models
from django.forms import Textarea
from .models import About

class AboutAdmin(admin.ModelAdmin):
	fields = ['title', 'background_img', 'screenshoot', 'bio', 'vision', 'mision', 'website', 'address1','address2','address3','address4','address5','email1','email2','email3','mobile1','mobile2','mobile3','designer','developer','logo']
	list_display = ['id', 'background_img', 'screenshoot', 'bio', 'vision', 'mision','website', 'title', 'address1','address2','address3','address4','address5','email1','email2','email3','mobile1','mobile2','mobile3','designer','developer','logo']
	list_display_links = ['id']
	list_editable = ['title', 'background_img', 'screenshoot', 'bio', 'vision', 'mision', 'website', 'address1','address2','address3','address4','address5','email1','email2','email3','mobile1','mobile2','mobile3','designer','developer','logo']
	formfield_overrides = {
		models.TextField: {'widget': Textarea(attrs={'rows':3, 'cols':30})},
	}
admin.site.register(About,AboutAdmin)
