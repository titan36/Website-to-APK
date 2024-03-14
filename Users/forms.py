from django import forms
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.models import User
from .models import ProfilePic
from croppie.fields import CroppieField

class UserRegisterForm(forms.ModelForm):
	first_name = forms.CharField(label='First Name', max_length=30, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'first_name',
	'type':'text',
	'id':'first_name',
	'placeholder':'First Name',
	}))

	last_name = forms.CharField(label='Last Name', max_length=30, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'last_name',
	'type':'text',
	'id':'last_name',
	'placeholder':'Last Name',
	}))

	email = forms.EmailField(label='Email', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	'placeholder':'Email address',
	}))

	username = forms.CharField(label='Username', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'username',
	'type':'text',
	'id':'username',
	'placeholder':'Username',
	}))

	password = forms.CharField(label='Password', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'password',
	'type':'password',
	'id':'password',
	'placeholder':'Password',
	}))
	
	confirm_password = forms.CharField(label='Confirm Password', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'confirm_password',
	'type':'password',
	'id':'confirm_password',
	'placeholder':'Confirm Password',
	}))
	class Meta:
		model = User
		fields = ['first_name','last_name','email','username','password']

class UserUpdate(forms.ModelForm):
	first_name = forms.CharField(label='First Name', max_length=30, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'first_name',
	'type':'text',
	'id':'first_name',
	
	}))

	last_name = forms.CharField(label='Last Name', max_length=30, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'last_name',
	'type':'text',
	'id':'last_name',
	
	}))

	email = forms.EmailField(label='Email', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	
	}))

	username = forms.CharField(label='Username', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'username',
	'type':'text',
	'id':'username',
	
	}))
	
	class Meta:
		model = User
		fields = ['first_name','last_name','email','username']

class ProfileUpdate(forms.ModelForm):
	image = CroppieField(
	options={
	'viewport': {
	'width':120,
	'height':140,
	},
	'boundary':{
	'width':150,
	'height':150,
	}
	},
	
	label='Profile Photo', 
	)	
	class Meta:
		model = ProfilePic
		fields = ['image']
	
class LoginForm(AuthenticationForm):
	username = forms.CharField(label='Email Address', max_length=30, 
				widget=forms.TextInput(attrs={
				'class': 'form-control',
				'name': 'username',
				'type':'text',
				'placeholder':'Email'
				}))
	password = forms.CharField(label='Password', max_length=250,
				widget=forms.TextInput(attrs={
				'class': 'form-control',
				'name': 'password',
				'type':'password',
				'placeholder':'password'
				}))
