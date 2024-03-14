from django.urls import path
from .views import *
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
path(r'', Dashboard, name='dashboard'),
path(r'edit_profile_pic/', UserProfilePic, name='edit_profile_pic'),
path(r'edit_user_profile/', UserProfile, name='edit_user_profile'),
path(r'quickmail/', QuickMail, name='quickmail'),
path(r'manage_users', ManageUsers, name='manage_users'),
path(r'new_message/', NewMessages, name='new_message'),
path(r'all_message/', AllMessages, name='all_message'),
path(r'delete_user/<int:userid>', DeleteUser, name='delete_user'),
path(r'delete_contact/<int:message_id>', DeleteContact, name='delete_contact'),
path(r'contact_us/', ContactUs, name='contact_us'),
path(r'send_message/<int:message_id>', SendMail, name='send_message'),
#path(r'chat_with_admin/<slug:receiver_id>', ChatWithAdmin, name='chat_with_admin'),

]

if settings.DEBUG:
	urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
	urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
