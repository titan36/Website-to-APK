import shutil, csv
import xlwt
from django.contrib import admin
from .models import ApkInfo
from django.http import HttpResponse


def delete_selected_apk(ApkInfoAdmin,request,queryset):
	for apk in queryset:
		apkid = apk.id
		username = apk.creator
		try:
			shutil.rmtree('media/application/'+str(username)+'/'+str(apkid))
		except:
			pass
		apk.delete()
delete_selected_apk.short_description = 'Delete selected apk and all related info'	

def export_to_csv(ApkInfoAdmin, request, queryset):
	response = HttpResponse(content_type='text/csv')
	response['Content-Disposition'] = 'attachment; filename="apkinfo.csv"'
	output = csv.writer(response)
	output.writerow(['Id', 'Application Name', 'Package Name', 'Home Title', 'Email', 'Website URL', 'Logo', 'Splash Screen', 'Creator', 'Status'])
	apkinfo = queryset.values_list('id', 'app_name', 'package_name', 'title_activity_home', 'email', 'website_url', 'logo', 'splash_screen', 'creator', 'status')
	for apk in apkinfo:
		output.writerow(apk)
	return response	
export_to_csv.shor_description = 'Export to csv'	

def export_to_excel(ApkInfoAdmin, request, queryset):
	response = HttpResponse(content_type='application/ms-excel')
	response['Content-Disposition'] = 'attachment; filename="apkinfo.xls"'
	wb = xlwt.Workbook(encoding='utf-8')
	ws = wb.add_sheet('Apkinfo')
	row_num = 0
	font_style = xlwt.XFStyle()
	font_style.font.bold = True
	columns = ['Id', 'Application Name', 'Package Name', 'Home Title', 'Email', 'Website URL', 'Logo', 'Splash Screen', 'Creator', 'Status']
	for col_num in range(len(columns)):
		ws.write(row_num, col_num, columns[col_num], font_style)
	font_style = xlwt.XFStyle()
	apkinfo_rows = queryset.values_list('id', 'app_name', 'package_name', 'title_activity_home', 'email', 'website_url', 'logo', 'splash_screen', 'creator', 'status')
	for row in apkinfo_rows:
		row_num += 1
		for col_num in range(len(row)):
			ws.write(row_num, col_num, row[col_num], font_style)
	wb.save(response)
	return response

class ApkInfoAdmin(admin.ModelAdmin):
	fields = ['app_name', 'package_name', 'title_activity_home','logo','splash_screen','email','website_url','creator','status']
	search_fields = ['app_name','package_name','title_activity_home', 'status']
	list_filter = ['status', 'created_at']
	list_display = ['pk','app_name', 'package_name', 'title_activity_home','email','website_url','creator','logo','splash_screen','status']
	list_per_page = 10
	actions = [delete_selected_apk, export_to_csv,export_to_excel]
admin.site.register(ApkInfo, ApkInfoAdmin)

