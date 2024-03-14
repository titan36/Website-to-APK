from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from AboutUs.models import About
from .forms import ContactUsForm


#@login_required
def index(request):
	context = {}
	try:
	    about = About.objects.get(id=1)
	except:
	    about = None
	context['aboutus'] = about
	form = ContactUsForm()
	context['form'] = form
	if request.method == 'POST':
		form = ContactUsForm(request.POST)
		ip = request.META.get('REMOTE_ADDR')
		if form.is_valid():
			contact = form.save(commit=False)
			contact.ip_address = ip
			form.save()
			request.session.set_expiry(300)
			messages.success(request, f'Thank You!, Your message is submited successfuly')
			return render(request, 'home.html', context)
		else:
			form = ContactUsForm(request.POST)
			context['form'] = form
			messages.warning(request, f'Your message can not submited, Please try again')
			return render(request, 'home.html', context)
	else:
		return render(request, 'home.html', context)
	
