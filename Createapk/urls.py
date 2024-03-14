from django.urls import path
from .views import *

urlpatterns = [
path('', CreateApk, name='createapk'),
path(r'startproject/', StartAPK, name='startapk'),
path(r'apk_detail/', ApkDetail, name='apk_detail'),
path(r'create_apk/', CreateApk, name='create_apk'),
path(r'build_apk/', BuildApk, name='build_apk'),
path(r'complete_apk/', CompleteApk, name='complete_apk'),
path(r'started_apk/', StartedApk, name='started_apk'),
path(r'download_apk/<int:apkid>/', DownloadApk, name='download_apk'),
path(r'manage_apk/', ManageApk, name='manage_apk'),
path(r'completed_apk/', CompletedApk, name='completed_apk'),
path(r'edit_apk/', EditApk, name='edit_apk'),
path(r'update_apk/<int:apkid>/', UpdateApk, name='update_apk'),
path(r'rebuild_apk/<int:apkid>/', ReBuildApk, name='rebuild_apk'),
path(r'print_apk/<int:apkid>/', PrintApk, name='print_apk'),
path(r'delete_apk/<int:apkid>', DeleteApk, name='delete_apk'),
path(r'check/', Check, name='apk'),
]
