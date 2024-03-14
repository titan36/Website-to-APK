from django import forms
from .models import About

class UpdateBannerForm(forms.ModelForm):
	logo = forms.ImageField(label='Logo', max_length=250, required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'logo',
	'type':'file',
	'id':'logo',
	}))

	background_img	 = forms.ImageField(label='Header Background', required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name': 'background_img',
	'type': 'file',
	'id':'background_img',
	}))
	
	screenshoot	 = forms.ImageField(label='Screenshoot', required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'type': 'file',
	'name': 'screenshoot',
	'id':'screenshoot',
	}))

	class Meta:
		model = About
		fields = ['logo', 'background_img', 'screenshoot']
