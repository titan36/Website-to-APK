from django.urls import path
from .views import register, user_login, user_logout, change_password
from django.conf.urls.static import static
from django.conf import settings
from django.contrib.auth import views as auth_views

urlpatterns = [
path('registration/',register , name='register'),
path('login/', user_login , name='login'),
path('logout/', user_logout , name='logout'),
path('change_password/', change_password , name='change_password'),
path('password_reset/',
	auth_views.PasswordResetView.as_view(
	template_name = 'password_reset.html'
	),name='password_reset'),
	
path('password_reset/done/',
	auth_views.PasswordResetDoneView.as_view(
	template_name='password_reset_done.html'),
	name='password_reset_done'),
	
path('password_reset-confirm/<uidb64>/<token>/',
	auth_views.PasswordResetConfirmView.as_view(
	template_name='password_reset_confirm.html'),
	name='password_reset_confirm'),

path('password_reset-complete/',
	auth_views.PasswordResetCompleteView.as_view(
	template_name='password_reset_complete.html'),
	name='password_reset_complete'),	


]

if settings.DEBUG:
	urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
	urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
