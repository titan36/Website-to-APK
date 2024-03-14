import os,re
import shutil
import subprocess as sub
from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.core.files.storage import FileSystemStorage
from django.http import FileResponse
from django.urls import reverse_lazy
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.conf import settings
from .forms import ApkForm
from Createapk.forms import ApkForm, EditApkForm, UpdateApkForm 
from Createapk.models import ApkInfo

@login_required
def StartAPK(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		apkdetail = ApkInfo.objects.filter(status=0, creator=user)
		if apkdetail.count() > 0:
			messages.info(request, f'You have already started new apk project to continue click on Next button. if you want to remove and start new apk click on delete button')
			return redirect('apk_detail')
		else:
			form = ApkForm()
			if request.method == 'POST':
				form = ApkForm(request.POST, request.FILES)
				if form.is_valid():
					form.instance.creator = request.user
					form.save()
					return redirect('apk_detail')
				else:
					messages.error(request, r'')
					form = ApkForm(request.POST, request.FILES)
					return render(request, 'dashboard/startproject.html',{'form':form})
			else:
				form = ApkForm()
				return render(request, 'dashboard/startproject.html',{'form':form})
	else:
		return redirect('login')

@login_required
def ApkDetail(request):
	if request.user.is_authenticated:
		context = {}
		if request.user.is_staff:
			user = request.user.id
			try:
				apkdetail = ApkInfo.objects.filter(status=0)
				context['apps'] = apkdetail
				return render(request, 'dashboard/manageapk.html', context)
			except:
				messages.warning(request, f'No started apk')
				return redirect('manage_apk')
		else:
			user = request.user.id
			try:
				apkdetail = ApkInfo.objects.get(status=0, creator=user)
			except:
				apk = ApkInfo.objects.filter(status=0, creator=user)
				apk.delete()
				return redirect('startapk')
		context['app'] = apkdetail
		apkid = apkdetail.id
		creator = apkdetail.creator
		source = settings.MEDIA_ROOT+'/tools/orginal/website2apk/'
		apkdir = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)
		if os.path.exists(apkdir):
			pass
		else:	
			shutil.copytree(source, apkdir)
		return render(request, 'dashboard/apkdetail.html', context)
	else:
		return redirect('login')

@login_required
def CreateApk(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		try:
			apk = ApkInfo.objects.get(status=0, creator=user)
		except:
			return redirect('startapk')	
		#apk information===============================
		apkid = apk.id
		creator = apk.creator
		#endapkinfo======================================
		
		source = settings.MEDIA_ROOT+'/tools/orginal/smali/'
		destination = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)+'/smali'
		
		if os.path.exists(destination):
			pass
		else:
			shutil.copytree(source, destination)
		return render(request,'dashboard/apkbuild.html', {'app':apk})
	else:
		return redirect('login')




@login_required
def BuildApk(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		try:
			apkdetail = ApkInfo.objects.get(status=0, creator=user)
		except:
			apk = ApkInfo.objects.filter(status=0, creator=user)
			apk.delete()
			return redirect('startapk')
		context['app'] = apkdetail
		apkid = apkdetail.id
		apkname = apkdetail.app_name
		full_name = str(apkname+".apk")
		package_name = apkdetail.package_name
		home_title = apkdetail.title_activity_home
		url = apkdetail.website_url
		email = apkdetail.email
		logo = apkdetail.logo
		splash_screen = apkdetail.splash_screen
		creator = apkdetail.creator
		split = package_name.split('.')
		length = len(split)
		if length == 2:
			path = os.path.join(split[0],split[1])
		elif length == 3:
			path = os.path.join(split[0],split[1],split[2])
		elif length == 4:
			path = os.path.join(split[0],split[1],split[2],split[3])
		elif length == 5:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4])
		elif length == 6:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5])
		elif length == 7:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5],split[6])
		elif length == 8:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5],split[6],split[7])
		elif length == 9:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5],split[6],split[7],split[8])
		elif length == 10:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5],split[6],split[7],split[8],split[9])
		else:
			path = os.path.join(split[0],split[1],split[2],split[3],split[4],split[5],split[6],split[7],split[8],split[9])
		
		mainsource = settings.MEDIA_ROOT+'/tools/orginal/mainsmali/'
		maindst = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)+'/smali/'+path
		if os.path.exists(maindst):
			pass
		else:
			if os.path.exists(maindst):
				pass
			else:	
				os.makedirs(maindst)
		listall = os.listdir(mainsource)
		number = len(listall)
		for a in range(number):
			with open(mainsource+'/'+listall[a], 'r') as orginal:
				lines = orginal.readlines()
				with open(maindst+'/'+listall[a], 'w') as copy:
					for line in lines:
						copy.write(re.sub(r'murait/the/android/mania', path, line))
		copy.close()				
		orginal.close()				
		with open(maindst+'/HomeActivity.smali', 'r') as orginal:
			lines = orginal.readlines()
			with open(maindst+'/HomeActivity.smali', 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'https://www.websiteurl.com', url, line))
		copy.close()
		orginal.close()
		AndroidManifest = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)+'/AndroidManifest.xml'
		with open(AndroidManifest, 'r') as orginal:
			lines = orginal.readlines()
			with open(AndroidManifest, 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'murait.the.android.mania', package_name, line))
		copy.close()
		orginal.close()
		
		strings = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)+'/res/values/strings.xml'
		with open(strings, 'r') as orginal:
			lines = orginal.readlines()
			with open(strings, 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'Appication Name', apkname, line))
		copy.close()
		orginal.close()
		
		with open(strings, 'r') as orginal:
			lines = orginal.readlines()
			with open(strings, 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'yourxyzabcdefmail@mail.com', email, line))
		copy.close()
		orginal.close()
		
		with open(strings, 'r') as orginal:
			lines = orginal.readlines()
			with open(strings, 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'yourtitleactivity', home_title, line))
		copy.close()
		orginal.close()
		
		with open(strings, 'r') as orginal:
			lines = orginal.readlines()
			with open(strings, 'w') as copy:
				for line in lines:
					copy.write(re.sub(r'yourheadertitle', apkname, line))
		copy.close()
		orginal.close()
		appsfolder = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)
		defaultlogo = appsfolder+'/res/drawable/logo.png'
		#defaultsplash = 'media/application/'+str(creator)+'/res/drawable/splash.png'
		defaulticon = appsfolder+'/res/mipmap-xxhdpi/ic_launcher.png'
		defaulticon1 = appsfolder+'/res/mipmap-xxxhdpi/ic_launcher.png'
		defaulticon2 = appsfolder+'/res/mipmap-xhdpi/ic_launcher.png'
		defaulticon3 = appsfolder+'/res/mipmap-hdpi/ic_launcher.png'
		defaulticon4 = appsfolder+'/res/mipmap-mdpi/ic_launcher.png'
		
		defaulticon11 = appsfolder+'/res/mipmap-xxhdpi/ic_launcher_round.png'
		defaulticon12 = appsfolder+'/res/mipmap-xxxhdpi/ic_launcher_round.png'
		defaulticon13 = appsfolder+'/res/mipmap-xhdpi/ic_launcher_round.png'
		defaulticon14 = appsfolder+'/res/mipmap-hdpi/ic_launcher_round.png'
		defaulticon15 = appsfolder+'/res/mipmap-mdpi/ic_launcher_round.png'
		#shutil.copy('media/'+str(logo), defaultlogo)
		shutil.copy(settings.MEDIA_ROOT+'/'+str(splash_screen), defaultlogo)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon11)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon12)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon13)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon14)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon15)
		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(splash_screen), defaultlogo)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon1)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon2)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon3)		
		shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon4)				
		return render(request,'dashboard/apkcomplete.html', {'app':apkdetail})
	else:
		return redirect('login')

def CompleteApk(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		try:
			apkdetail = ApkInfo.objects.get(status=0, creator=user)
		except:
			return redirect('startapk')
		context['app'] = apkdetail
		apkid = apkdetail.id
		creator = apkdetail.creator
		application = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)
		apk = application+'/dist/website2apk.apk'
		tools = settings.MEDIA_ROOT+'/tools/'
		if os.path.exists(apk):
			signer = tools+'apksigner/apksigner sign --ks '+tools+'apksigner/dani --ks-pass pass:danihailu '+apk
			sub.call(signer,stdout=None,stderr=None,shell=True)
			context['success'] = 'You have built your apk successfuly'
			apkdetail.status = 1
			apkdetail.save()
			return render(request,'dashboard/apkdone.html', context)
		else:
			builder = tools+'/apktool/apktool.jar'
			sub.call(builder+' b '+application,stdout=None,stderr=None,shell=True)
			if os.path.exists(apk):
				signer = tools+'apksigner/apksigner sign --ks '+tools+'apksigner/dani --ks-pass pass:danihailu '+apk
				sub.call(signer,stdout=None,stderr=None,shell=True)
				context['success'] = 'You have built your apk successfuly'
				apkdetail.status = 1
				apkdetail.save()
				return render(request,'dashboard/apkdone.html', context)
			else:
				context['error'] = 'Can not build application, please check your internet connection'
				return render(request,'dashboard/apkdone.html', context)
		
	else:
		return redirect('login')

@login_required
def UpdateApk(request, apkid):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		apkdetail = ApkInfo.objects.get(status=1, id=apkid, creator=user)
		old_name = apkdetail.app_name
		old_package_name = apkdetail.package_name
		old_title_activity_home = apkdetail.title_activity_home
		old_logo = apkdetail.logo
		old_splash_screen = apkdetail.splash_screen
		old_email = apkdetail.email
		old_website_url = apkdetail.website_url
		context['app'] = apkdetail
		if request.method == 'POST':
			form = UpdateApkForm(request.POST, request.FILES, instance=apkdetail)
			if form.is_valid():
				form.save()
				apkdetail = ApkInfo.objects.get(status=1, id=apkid, creator=user)				
				apkid = apkdetail.id
				apkname = apkdetail.app_name
				full_name = str(apkname+".apk")
				package_name = apkdetail.package_name
				home_title = apkdetail.title_activity_home
				url = apkdetail.website_url
				email = apkdetail.email
				logo = apkdetail.logo
				splash_screen = apkdetail.splash_screen
				creator = apkdetail.creator
				split = package_name.split('.')
				length = len(split)
				strings = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)+'/res/values/strings.xml'
				with open(strings, 'r') as orginal:
					lines = orginal.readlines()
					with open(strings, 'w') as copy:
						for line in lines:
							copy.write(re.sub(old_name, apkname, line))
				copy.close()
				orginal.close()
				with open(strings, 'r') as orginal:
					lines = orginal.readlines()
					with open(strings, 'w') as copy:
						for line in lines:
							copy.write(re.sub(old_email, email, line))
				copy.close()
				orginal.close()
				
				with open(strings, 'r') as orginal:
					lines = orginal.readlines()
					with open(strings, 'w') as copy:
						for line in lines:
							copy.write(re.sub(old_title_activity_home, home_title, line))
				copy.close()
				orginal.close()				
				appsfolder = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)
				defaultlogo = appsfolder+'/res/drawable/logo.png'
				defaulticon = appsfolder+'/res/mipmap-xxhdpi/ic_launcher.png'
				defaulticon1 = appsfolder+'/res/mipmap-xxxhdpi/ic_launcher.png'
				defaulticon2 = appsfolder+'/res/mipmap-xhdpi/ic_launcher.png'
				defaulticon3 = appsfolder+'/res/mipmap-hdpi/ic_launcher.png'
				defaulticon4 = appsfolder+'/res/mipmap-mdpi/ic_launcher.png'
				
				shutil.copy(settings.MEDIA_ROOT+'/'+str(splash_screen), defaultlogo)		
				shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon)
				shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon1)
				shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon2)
				shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon3)
				shutil.copy(settings.MEDIA_ROOT+'/'+str(logo), defaulticon4)
				messages.success(request, f'Your app info has been set sucessfuly. To build click on Rebuild button')
				return render(request,'dashboard/rebuildapk.html', context)
	
			else:
				messages.error(request, f'You can not update, please check the data you entered')
				return redirect('manage_apk')
		else:
			form = UpdateApkForm(instance=apkdetail)
			website = apkdetail.app_name
			package = apkdetail.package_name
			context['website_url'] = website
			context['package_name'] = package
			context['form'] = form
			return render(request, 'dashboard/updateapk.html', context)
	else:
		return redirect('login')		


@login_required
def ReBuildApk(request, apkid):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		try:
			apkdetail = ApkInfo.objects.get(status=1, id=apkid, creator=user)
		except:
			return redirect('startapk')
		context['app'] = apkdetail
		apkid = apkdetail.id
		creator = apkdetail.creator
		application = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(apkid)
		tools = settings.MEDIA_ROOT+'/tools/'
		builder = tools+'/apktool/apktool.jar'
		sub.call(builder+' b '+application,stdout=None,stderr=None,shell=True)
		apk = application+'/dist/website2apk.apk'
		if os.path.exists(apk):
			signer = tools+'apksigner/apksigner sign --ks '+tools+'apksigner/dani --ks-pass pass:danihailu '+apk
			sub.call(signer,stdout=None,stderr=None,shell=True)
			context['success'] = 'You have updated your apk successfuly'
			return render(request,'dashboard/apkdone.html', context)
		else:
			context['error'] = 'Could not update, please check your internet connection'
			return render(request,'dashboard/apkdone.html', context)
		
	else:
		return redirect('login')

@login_required
def StartedApk(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		apkdetail = ApkInfo.objects.filter(status=0, creator=user)
		if apkdetail.count() > 0:
			return redirect('apk_detail')
		else:
			return redirect('startapk')
	else:
		return redirect('login')
@login_required
def DownloadApk(request, apkid):
	if request.user.is_authenticated:
		user = request.user.id
		try:
			apk = ApkInfo.objects.get(status=1, id=apkid, creator=user)
		except:
			return redirect('startapk')
		creator = apk.creator
		download_apk_id = apk.id
		fullname = apk.app_name+'.apk'
		path  = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(download_apk_id)+'/dist'
		listall = os.listdir(path)
		defaultname = listall[0]
		defaultname = os.path.join(path,defaultname)
		newname  = settings.MEDIA_ROOT+'/application/'+str(creator)+'/'+str(download_apk_id)+'/dist/'+fullname
		if os.path.basename(defaultname) == newname:
			if os.path.exists(newname):
				ext = os.path.basename(newname).split('.')[-1]
				if ext not in ['py', 'db',  'sqlite3', 'sql', 'html', 'java', 'smali', 'xml', 'png', 'jpg', 'zip', 'dex']:
					response = FileResponse(open(newname, 'rb'))
					response['content_type'] = "application/octet-stream"
					response['Content-Disposition'] = 'attachment; filename=' + os.path.basename(newname)
					return response
				else:
					raise Http404
			else:
				return redirect('startapk')
		else:
			os.rename(defaultname, newname)
			if os.path.exists(newname):
				ext = os.path.basename(newname).split('.')[-1]
				if ext not in ['py', 'db',  'sqlite3', 'sql', 'html', 'java', 'smali', 'xml', 'png', 'jpg', 'zip', 'dex']:
					response = FileResponse(open(newname, 'rb'))
					response['content_type'] = "application/octet-stream"
					response['Content-Disposition'] = 'attachment; filename=' + os.path.basename(newname)
					return response
				else:
					raise Http404
			else:
				return redirect('startapk')
	else:
		return redirect('login')
		
@login_required
def ManageApk(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			apps = ApkInfo.objects.all()
		else:
			apps = ApkInfo.objects.filter(creator=request.user)
		return render(request, 'dashboard/manageapk.html', {'apps':apps})
	else:
		return redirect('login')

def CompletedApk(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			apps = ApkInfo.objects.filter(status=1)
		else:
			user = request.user.id
			apps = ApkInfo.objects.filter(creator=user, status=1)
		return render(request, 'dashboard/manageapk.html', {'apps':apps})
	else:
		return redirect('login')


@login_required
def EditApk(request):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		apkdetail = ApkInfo.objects.get(status=0, creator=user)
		if request.method == 'POST':
			form = EditApkForm(request.POST, request.FILES, instance=apkdetail)
			if form.is_valid():
				form.save()
				return redirect('startapk')
			else:
				return redirect('startapk')
		else:
			form = EditApkForm(instance=apkdetail)
			return render(request, 'dashboard/editapkdetail.html', {'form':form, 'logo':apkdetail})
	else:
		return redirect('login')



@login_required
def DeleteApk(request, apkid):
	if request.user.is_authenticated:
		user = request.user.id
		apk = ApkInfo.objects.get(id = apkid, creator=user)
		username = apk.creator
		if request.user == username:
			apk.delete()
			messages.success(request, f'You have been deleted your application successfuly')
			return redirect('dashboard')
		else:
			return redirect('dashboard')
	else:
		return redirect('login')

@login_required
def PrintApk(request, apkid):
	if request.user.is_authenticated:
		context = {}
		user = request.user.id
		try:
			apk = ApkInfo.objects.get(id=apkid, creator=user)
		except:
			return redirect('manage_apk')
		context['report'] = apk	
		return render(request, 'dashboard/apkreport.html', context)	
	else:
		return redirect('login')		

def Check(request):
	context = {}
	user = request.user.id
	apk = ApkInfo.objects.get(status=0, creator=4)
	context['app'] = apk
	context['name'] = apk.creator
	package = apk.package_name
	split = package.split('.')
	ful = os.path.join(split[0],split[1])	
	creator = apk.creator
	dst = settings.MEDIA_ROOT+'/application/babush/dist/website2apk.apk'
	files = FileResponse(open(dst,'rb'))
	
	#os.makedirs(dst)
	#split = apk.package_name.split('.')
	#ful = os.path.join(split[0],split[1])	
	return render(request, 'dashboard/check.html', context)
