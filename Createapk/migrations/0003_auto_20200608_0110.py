# Generated by Django 2.1.5 on 2020-06-08 01:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Createapk', '0002_apkinfo_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='apkinfo',
            name='logo',
            field=models.ImageField(blank=True, null=True, upload_to='logo'),
        ),
        migrations.AlterField(
            model_name='apkinfo',
            name='package_name',
            field=models.CharField(max_length=100, unique=True),
        ),
        migrations.AlterField(
            model_name='apkinfo',
            name='splash_screen',
            field=models.ImageField(blank=True, null=True, upload_to='splash_screen'),
        ),
    ]