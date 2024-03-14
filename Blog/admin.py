from django.contrib import admin
from .models import ContactUs


class ContactUsAdmin(admin.ModelAdmin):
	fields = ['name','email','subject','message']
	list_display = ['name','email','subject','message', 'date']
	list_filter = ['date']
	list_per_page = 10
	search_fields = []
	
admin.site.register(ContactUs, ContactUsAdmin)


