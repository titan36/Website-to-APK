from django.contrib import admin
from .models import Chat

class ChatAdmin(admin.ModelAdmin):
	fields = ['sender','receiver','message','status']
	list_filter = ['status', 'time']
	list_display = ['sender','receiver','message','status', 'time']
	list_per_page = 10
admin.site.register(Chat, ChatAdmin)


