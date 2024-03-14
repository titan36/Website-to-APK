from django.shortcuts import render, redirect, get_object_or_404
from .forms import UserRegisterForm, LoginForm, ProfileUpdate
from django.contrib.auth.models import User
from django.http import HttpResponsePermanentRedirect, HttpResponseRedirect
from django.urls import reverse, reverse_lazy
from django.contrib.auth import authenticate, login, logout,update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib import messages


def user_login(request):
	form = LoginForm()
	context = {'from':form}
	if request.method == 'POST':
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(request,username=username,password=password)
		if user:
			login(request,user)
			request.session['username'] = username
			context = {'success':'login successfully'}
			return redirect('dashboard')
		else:
			return render(request, 'login.html', context)
	else:
		return render(request, 'login.html', context)

@login_required
def user_logout(request):
	logout(request)
	return redirect('login')

@login_required
def change_password(request):
	if request.user.is_authenticated:
		context = {}
		if request.method == 'POST':
			change_password = PasswordChangeForm(request.user, request.POST)
			if change_password.is_valid():
				password = change_password.save()
				update_session_auth_hash(request, password)
				messages.success(request, 'Your password was successfully updated!')
				return redirect('dashboard')
			else:
				change_password = PasswordChangeForm(request.user)
				context['changepassword'] = change_password
				return render(request, 'dashboard/changepassword.html', context)
		else:
			change_password = PasswordChangeForm(request.user)
			context['changepassword'] = change_password
			return render(request, 'dashboard/changepassword.html', context)
	else:
		return redirect('login')
				

def register(request):
	context = {'form':UserRegisterForm()}
	if request.method == 'POST':
		form = UserRegisterForm(request.POST)
		#profile_form = ProfileUpdate(request.POST, request.FILES)
		if form.is_valid():
			password = form.cleaned_data.get('password')
			confirm_password = form.cleaned_data.get('confirm_password')
			if User.objects.filter(email=form.cleaned_data.get('email')).count() >= 1:
				context['form'] = UserRegisterForm(request.POST)
				context['error_message'] = "Email already registered"
				return render(request, 'register.html',context)
			elif User.objects.filter(username=form.cleaned_data.get('username')).count() >= 1:
				context['form'] = UserRegisterForm(request.POST)
				context['error_message'] = "Username already registered"
				return render(request, 'register.html',context)
			elif  password != confirm_password:
				context['form'] = UserRegisterForm(request.POST)
				context['error_message'] = "Password does not match"
				return render(request, 'register.html',context)
			else:	
				user = form.save(commit=False)				
				password = form.cleaned_data.get('password')
				user.set_password(password)
				form.save()
				context['success_message'] = "You are registered Successfully"
				return redirect('login')
		else:
			return render(request, 'register.html', {'form':form})
	else:
		return render(request, 'register.html',context)
