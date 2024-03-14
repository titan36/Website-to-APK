from django.core import serializers
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import About


@csrf_exempt
def update_about_us(request):
	id=request.POST.get('id','')
	type=request.POST.get('type','')
	value=request.POST.get('value','')
	about = About.objects.get(id=id)
	
	if type=="title":
		about.title=value

	if type == "website":
		about.website = value
	
	if type == "designer":
		about.designer = value
	
	if type == "developer":
		about.developer = value
	
	if type == "address1":
		about.address1 = value
	
	if type=="address2":
		about.address2=value

	if type == "address3":
		about.address3 = value
	
	if type == "address4":
		about.address4 = value
	
	if type == "address5":
		about.address5 = value
	
	if type == "email1":
		about.email1 = value
		
	if type=="email2":
		about.email2=value

	if type == "email3":
		about.email3 = value
	
	if type == "mobile1":
		about.mobile1 = value
	
	if type == "mobile2":
		about.mobile2 = value
	
	if type == "mobile3":
		about.mobile3 = value
	
	if type == "bio":
		about.bio = value
	
	if type == "vision":
		about.vision = value
		
	if type == "mision":
		about.mision = value
	
	about.save()
	return JsonResponse({"success":"Updated"})
	
