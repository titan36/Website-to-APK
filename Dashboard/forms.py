from django import forms 
from .models import Chat

class ChatForm(forms.ModelForm):
	message = forms.CharField(required=True,widget=forms.TextInput(attrs={
	'class':'form-control',
	'name':'message',
	'id':'message',
	'placeholder':'Type message...',
	}))

	class Meta:
		model = Chat
		fields = ['message']
