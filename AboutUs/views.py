from django.shortcuts import redirect, render
from django.contrib.auth.decorators import login_required
from .models import About
from .forms import UpdateBannerForm

@login_required
def AboutUs(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			context = {}
			try:
				about = About.objects.count()
				if about == 0:
					about = About(
						title="Your Title",
						website="http://yourwebsite.com",
						designer="Designer Name",
						developer="Developer Name",
						# For ImageFields, you need to pass an Image/File instance
						# logo=ImageInstance,
						# background_img=ImageInstance,
						# screenshoot=ImageInstance,
						address1="Address Line 1",
						address2="Address Line 2",
						email1="email1@example.com",
						mobile1="1234567890",
						bio="Your Bio",
						vision="Your Vision",
						mision="Your Mission",
					)

					# Save the instance to the database
					about.save()
				else:
					about = About.objects.all()
					context['aboutus'] = about
			except:
				context['aboutus'] = about
			return render(request, 'dashboard/aboutus.html', context)
		else:
			return redirect('dashboard')
	else:
		return redirect('login')
		

def UpdateBanner(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			context = {}
			form = UpdateBannerForm()
			context['updatelogo'] = form
			about = About.objects.get(id=1)
			context['aboutus'] = about
			if request.method == 'POST':
				form = UpdateBannerForm(request.POST, request.FILES, instance=about)
				if form.is_valid():
					update = form.save(commit=False)
					update.logo = form.cleaned_data.get('logo')
					update.background_img = form.cleaned_data.get('background_img')
					update.screenshoot = form.cleaned_data.get('screenshoot')
					form.save()
					return render(request, 'dashboard/updatebanner.html', context)
				else:
					pass
			else:
				return render(request, 'dashboard/updatebanner.html', context)
		else:
			return redirect('dashboard')
	else:
		return redirect('login')
