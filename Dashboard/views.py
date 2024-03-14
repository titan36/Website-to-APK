import os
import datetime
from django.shortcuts import render,redirect, HttpResponseRedirect
from django.http import HttpResponse
from django.urls import reverse
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.conf import settings
from django.core.mail import send_mail
from website2apk.settings import EMAIL_HOST_USER
from Users.forms import UserUpdate, ProfileUpdate
from Users.models import ProfilePic
from Blog.models import ContactUs
from Blog.forms import ReplyForm,ContactUsForm
from Createapk.models import ApkInfo
from .models import Chat
from .forms import ChatForm

@login_required
def UserProfile(request):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			try:
				new_messages = ContactUs.objects.filter(status=0)
				context['new_message'] = new_messages
			except:
				pass
		else:
			pass
		
		if request.method == 'POST':
			userprofile = UserUpdate(request.POST, instance=request.user)
			if userprofile.is_valid():
				userprofile.save()
				messages.success(request, f'Your account has been updated!')
				return redirect('edit_user_profile')
			else:
				userprofile = UserUpdate(request.POST,instance=request.user)
				context['userprofile'] = userprofile
				return render(request, 'dashboard/editprofile.html')
		else:
			userprofile = UserUpdate(instance=request.user)
			context['userprofile'] = userprofile
			return render(request, 'dashboard/editprofile.html', context)
	else:
		return redirect('login')


@login_required
def UserProfilePic(request):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			try:
				new_messages = ContactUs.objects.filter(status=0)
				context['new_message'] = new_messages
			except:
				pass
		else:
			pass
			
		try:
			old_profile = request.user.profilepic.image
		except:
			old_profile = 0
		if request.method == 'POST':
			try:
				profile = request.user.profilepic
				profile_form = ProfileUpdate(request.POST,
											 request.FILES,
											 instance=profile)
			except:
				profile_form = ProfileUpdate(request.POST, request.FILES)
			if profile_form.is_valid():
				profile = profile_form.save(commit=False)
				profile.user = request.user
				profile.save()
				if old_profile == 0:
					pass
				else:
					os.remove(settings.MEDIA_ROOT+'/'+str(old_profile))
				messages.success(request, f'Profile Picture Updated')
				return redirect('edit_profile_pic')
			else:
				return redirect('login')
		else:
			try:
				profile = request.user.profilepic
				profile_form = ProfileUpdate(instance=profile)
			except:
				profile_form = ProfileUpdate()
			context['profilepic'] = profile_form
			return render(request, 'dashboard/editprofilepic.html',context)
	else:
		return redirect('login')

@login_required
def Dashboard(request):
	if request.user.is_authenticated:
		context = {}
		form = ChatForm()
		username = request.user
		userid = request.user.id
		profile = User.objects.get(username=username)
		try:
				picture = profile.profilepic
		except:
			picture = ""
		context['picture'] = picture
		try:
			all_apk = ApkInfo.objects.all()
			context['all_apk'] = all_apk
		except:
			pass
		#check whether the user is staff
		if request.user.is_staff:
			try:
				today = datetime.date.today()
				week = datetime.timedelta(5)
				week = today - week
				new_users = User.objects.filter(date_joined__gte=week)
				context['new_users'] = new_users
			except:
				pass
			try:
				new_messages = ContactUs.objects.filter(status=0)
				context['new_message'] = new_messages
			except:
				pass
			
			try:
				completed_apk= ApkInfo.objects.filter(status=1)
				context['completed_apk'] = completed_apk
			except:
				pass
			try:
				incompleted_apk = ApkInfo.objects.filter(status=0)
				context['incompleted_apk'] = incompleted_apk
			except:
				pass
			try:
				all_users = User.objects.all()
				context['all_users'] = all_users
			except:
				pass	
			#all_chat = Chat.objects.all()
			#context['all_chat'] = all_chat
		else:
			today = datetime.date.today()
			week = datetime.timedelta(7)
			week = today - week
			try:
				shared_apk = ApkInfo.objects.filter(status=1, created_at__gte=week)
				context['shared_apk'] = shared_apk
			except:
				pass
			try:
				read_message = Chat.objects.filter(receiver=username, status=1) | Chat.objects.filter(sender=username, status=1)
				context['read_message'] = read_message
			except:
				pass
			try:
				new_message = Chat.objects.filter(receiver=username, status=0)
				context['new_message'] = new_message
			except:
				pass
			try:
				completed= ApkInfo.objects.filter(creator=userid, status=1)
				context['completed_apk'] = completed
			except:
				pass
			try:
				incompleted = ApkInfo.objects.filter(creator=userid, status=0)
				context['incompleted_apk'] = incompleted
			except:
				pass
			context['form'] = form
		return render(request, 'dashboard/dashboard.html', context)
	else:
		return redirect('login')

@login_required
def AllMessages(request):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			try:
				messages = ContactUs.objects.all()
				context['all_message'] = messages
			except:
				pass	
			try:
				new_messages = ContactUs.objects.filter(status=0)
				context['new_message'] = new_messages
			except:
				pass	
			return render(request, 'dashboard/managemessages.html', context)
		else:
			return redirect('dashboard')
	else:
		return redirect('login')			

@login_required
def NewMessages(request):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			try:
				new_messages = ContactUs.objects.filter(status=0)
				context['all_message'] = new_messages
				context['new_message'] = new_messages
			except:
				pass	
			return render(request, 'dashboard/managemessages.html', context)
		else:
			return redirect('dashboard')
	else:
		return redirect('login')

@login_required
def SendMail(request, message_id):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			form = ReplyForm()
			context['message_id'] = message_id
			if request.method == 'POST':
				form = ReplyForm(request.POST)
				if form.is_valid():
					subject = form.cleaned_data.get('subject')
					message = form.cleaned_data.get('message')
				else:
					subject = request.POST['subject']
					message = request.POST['message']
				user = ContactUs.objects.get(id=message_id)
				email = user.email
				html_message = message
				try:
					send_mail(subject, message, EMAIL_HOST_USER, [email], html_message=html_message)
					user.status = 1
					user.save()
					messages.success(request, f'Your message have been sent successfuly')
				except:
					messages.warning(request, f'Your message was not sent')
				return redirect('all_message')
			else:
				context['reply'] = form
				new_messages = ContactUs.objects.filter(status=0)
				context['all_message'] = new_messages
				return render(request, 'dashboard/sendmail.html', context)
		else:
			return redirect('dashboard')
	else:
		return redirect('login')

@login_required
def ContactUs(request):
	if request.user.is_authenticated:
		context = {}
		form = ContactUsForm()
		context['form'] = form
		if request.method == 'POST':
			form = ContactUsForm(request.POST)
			ip = request.META.get('REMOTE_ADDR')
			if form.is_valid():
				contact = form.save(commit=False)
				contact.ip_address = ip
				contact.name = request.user
				contact.email = request.user.email
				form.save()
				messages.success(request, f'Thank You!, Your message is submited successfuly')
				return render(request, 'dashboard/contactus.html', context)
			else:
				form = ContactUsForm(request.POST)
				context['form'] = form
				messages.warning(request, f'Your message can not submited, Please try again')
				return render(request, 'dashboard/contactus.html', context)
		else:
			return render(request, 'dashboard/contactus.html', context)
	else:
		return redirect('login')

@login_required
def DeleteContact(request, message_id):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			try:
				message = ContactUs.objects.get(id=message_id)
				message.delete()
			except:
				pass	
			messages.success(request, f'Message deleted  successfuly')
			return redirect('all_message')
		else:
			return redirect('dashboard')
	else:
		return redirect('login')

def QuickMail(request):
	
	send_mail('This quick mail', 'This is the main message', 'selam@gmail.com', ['titushailu125@gmail.com','hailutito@gmail.com'])
	return redirect('dashboard')


def ManageUsers(request):
	context = {}
	if request.user.is_authenticated:
		if request.user.is_staff:
			try:
				users = User.objects.all()
				context['allusers'] = users
			except:
				pass	
			return render(request, 'dashboard/manageusers.html', context)
		else:
			messages.warning(request, f'Your have not permission')
			return redirect('dashboard')
	else:
		return redirect('login')
		
def DeleteUser(request, userid):
	context = {}
	if request.user.is_authenticated:
		if request.user.is_staff:
			try:
				user = User.objects.get(id=userid)
				user.delete()
			except:
				pass
			messages.success(request, f'Your have deleted '+user.username+' successfuly')
			return redirect('manage_users')
		else:
			message.warning(request, f'Your have not permission')
			return redirect('dashboard')
	else:
		return redirect('login')
