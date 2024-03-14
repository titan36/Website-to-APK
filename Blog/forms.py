from django import forms 
from .models import ContactUs

class ContactUsForm(forms.ModelForm):
	name = forms.CharField(label='Name', max_length=30, required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'name',
	'type':'text',
	'id':'name',
	'placeholder':'Your Name',
	}))

	email = forms.EmailField(label='Email', max_length=250, required=False,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'email',
	'type':'email',
	'id':'email',
	'placeholder':'Your Email',
	}))

	subject = forms.CharField(label='Subject', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'subject',
	'type':'text',
	'id':'subject',
	'placeholder':'Subject',
	}))

	message = forms.CharField(label='Message', required=True,widget=forms.Textarea(attrs={
	'class':'form-control',
	'name':'message',
	'id':'message',
	'rows':'5',
	'placeholder':'Your message',
	}))

	class Meta:
		model = ContactUs
		fields = ['name','email','subject','message']

class ReplyForm(forms.Form):
	subject = forms.CharField(label='Subject', max_length=250, required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'subject',
	'type':'text',
	'id':'subject',
	'placeholder':'Subject',
	}))

	message = forms.CharField(label='Message', required=True,widget=forms.Textarea(attrs={
	'class':'form-control', #to user ckeditor user 'class': 'textarea'
	'name': 'message',
	'id':'message',
	'placeholder':'Your message',
	'style': 'width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;'
	}))
	
	class Meta:
		fields = ['subject', 'message']

