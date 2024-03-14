from django.shortcuts import render, redirect
from django.shortcuts import render_to_response
import json
from django.http import HttpResponse,request
from django.contrib import messages
import shutil
import os
import requests as req
from .filemanager import FileManager
from Createapk.models import ApkInfo
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

fm = FileManager('media/', False)


@login_required
def index(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return render(request, 'dashboard/index.html')
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')
	else:
		return redirect('login')

def list_(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.list(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')	


def rename(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.rename(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def copy(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.copy(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def remove(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.remove(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def edit(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.edit(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def createFolder(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.createFolder(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')
	else:
		return redirect('login')

def changePermissions(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.changePermissions(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def compress(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.compress(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')		
	else:
		return redirect('login')

def downloadMultiple(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			ret = fm.downloadMultiple(request.GET, HttpResponse)
			os.umask(ret[1])
			shutil.rmtree(ret[2], ignore_errors=True)
			return ret[0]
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')		
	else:
		return redirect('login')

def move(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.move(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def getContent(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.getContent(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def extract(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.extract(json.loads(request.body.decode('utf-8')))))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')
	else:
		return redirect('login')

def download(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return fm.download(request.GET['path'], HttpResponse)
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')	
	else:
		return redirect('login')

def upload(request):
	if request.user.is_authenticated:
		if request.user.is_staff:
			return HttpResponse(json.dumps(fm.upload(request.FILES, request.POST['destination'])))
		else:
			messages.warning(request, f'You have no permission to access this page')
			return redirect('dashboard')
	else:
		return redirect('login')
