from django.urls import path
from .views import AboutUs, UpdateBanner
from .api import update_about_us

urlpatterns = [
path('about_us/', AboutUs, name='about_us'),
path('update_about', update_about_us, name='update_about'),
path('update_banner', UpdateBanner, name='update_banner'),
]
