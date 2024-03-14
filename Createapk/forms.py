from django import forms
from .models import ApkInfo

class ApkForm(forms.ModelForm):
	app_name = forms.CharField(label='Application Name', required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'app_name',
	'type':'text',
	'id':'app_name',
	'placeholder':'Enter APK Name',
	}))

	package_name = forms.CharField(label='Package Name,Example: com.example.myapp.webtoapk', help_text='Must be separated by dot', required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'package_name',
	'type':'text',
	'id':'package_name',
	'placeholder':'Must be Unique',
	}))
	
	title_activity_home = forms.CharField(label='Home Page Title', required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'title_activity_home',
	'type':'text',
	'id':'title_activity_home',
	'placeholder':'Enter Home Page Title',
	}))
	
	logo = forms.ImageField(label='Icon',required=True,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'logo',
	'type':'file',
	'id':'logo',
	}))
	
	splash_screen = forms.ImageField(label='Splash Screen',required=True,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'splash_screen',
	'type':'file',
	'id':'splash_screen',
	}))

	email = forms.CharField(label='Contact Email', required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	'placeholder':'Enter Email',
	}))

	website_url = forms.CharField(label='Website URL', required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'website_url',
	'type':'CharField',
	'id':'website_url',
	'placeholder':'Website Url or Domain',
	}))

	def clean_logo(self):
		uploaded_logo = self.cleaned_data['logo']		
		logoname = uploaded_logo.name.split('.')
		if logoname[-1].lower() == 'png':
			return self.cleaned_data['logo']
		else:
			raise forms.ValidationError(u'Invalid image format. Allowed format is png only')
	def clean_splash_screen(self):
		uploaded_splash_screen = self.cleaned_data['splash_screen']		
		splashname = uploaded_splash_screen.name.split('.')
		if splashname[-1].lower() == 'png':
			return self.cleaned_data['splash_screen']
		else:
			raise forms.ValidationError(u'Invalid splash screen image format. Allowed format is png only')	
	
	class Meta:
		model = ApkInfo
		fields = ['app_name','package_name','title_activity_home','logo','splash_screen','email','website_url']


class EditApkForm(forms.ModelForm):
	app_name = forms.CharField(label='Application Name', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'app_name',
	'type':'text',
	'id':'app_name',
	'placeholder':'Enter APK Name',
	}))

	package_name = forms.CharField(label='Package Name,Example: com.example.myapp.webtoapk', help_text='Must be separated by dot', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'package_name',
	'type':'text',
	'id':'package_name',
	'placeholder':'Must be Unique',
	}))
	
	title_activity_home = forms.CharField(label='Home Page Title', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'title_activity_home',
	'type':'text',
	'id':'title_activity_home',
	'placeholder':'Enter Home Page Title',
	}))
	
	logo = forms.ImageField(label='Logo',required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'logo',
	'type':'file',
	'id':'logo',
	}))
	
	splash_screen = forms.ImageField(label='Splash Screen',required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'splash_screen',
	'type':'file',
	'id':'splash_screen',
	}))

	email = forms.CharField(label='Contact Email', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	'placeholder':'Enter Email',
	}))

	website_url = forms.CharField(label='Website URL', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'website_url',
	'type':'CharField',
	'id':'website_url',
	'placeholder':'Website Url or Domain',
	}))

	def clean_logo(self):
		uploaded_logo = self.cleaned_data['logo']		
		logoname = uploaded_logo.name.split('.')
		if logoname[-1].lower() == 'png':
			return self.cleaned_data['logo']
		else:
			raise forms.ValidationError(u'Invalid image format. Allowed format is png only')
	def clean_splash_screen(self):
		uploaded_splash_screen = self.cleaned_data['splash_screen']		
		splashname = uploaded_splash_screen.name.split('.')
		if splashname[-1].lower() == 'png':
			return self.cleaned_data['splash_screen']
		else:
			raise forms.ValidationError(u'Invalid splash screen image format. Allowed format is png only')	

	class Meta:
		model = ApkInfo
		fields = ['app_name','package_name','title_activity_home','logo','splash_screen','email','website_url']


class UpdateApkForm(forms.ModelForm):
	app_name = forms.CharField(label='Application Name', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'app_name',
	'type':'text',
	'id':'app_name',
	'placeholder':'Enter APK Name',
	}))

	package_name = forms.CharField(disabled=True, label='Package Name,Example: com.example.myapp.webtoapk', help_text='Must be separated by dot', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'package_name',
	'type':'text',
	'id':'package_name',
	'placeholder':'Must be Unique',
	}))
	
	title_activity_home = forms.CharField(label='Home Page Title', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'title_activity_home',
	'type':'text',
	'id':'title_activity_home',
	'placeholder':'Enter Home Page Title',
	}))
	
	logo = forms.ImageField(label='Logo',required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'logo',
	'type':'file',
	'id':'logo',
	}))
	
	splash_screen = forms.ImageField(label='Splash Screen',required=False,widget=forms.FileInput(attrs={
	'class':'form-control',
	'name':'splash_screen',
	'type':'file',
	'id':'splash_screen',
	}))

	email = forms.CharField(label='Contact Email', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	'placeholder':'Enter Email',
	}))

	website_url = forms.CharField(disabled=True,label='Website URL', required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'website_url',
	'type':'CharField',
	'id':'website_url',
	'placeholder':'Website Url or Domain',
	}))

	def clean_logo(self):
		uploaded_logo = self.cleaned_data['logo']		
		logoname = uploaded_logo.name.split('.')
		if logoname[-1].lower() == 'png':
			return self.cleaned_data['logo']
		else:
			raise forms.ValidationError(u'Invalid image format. Allowed format is png only')
	def clean_splash_screen(self):
		uploaded_splash_screen = self.cleaned_data['splash_screen']		
		splashname = uploaded_splash_screen.name.split('.')
		if splashname[-1].lower() == 'png':
			return self.cleaned_data['splash_screen']
		else:
			raise forms.ValidationError(u'Invalid splash screen image format. Allowed format is png only')	

	class Meta:
		model = ApkInfo
		fields = ['app_name','package_name','title_activity_home','logo','splash_screen','email','website_url']
