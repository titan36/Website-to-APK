# Generated by Django 2.1.5 on 2020-05-28 23:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Createapk', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='apkinfo',
            name='status',
            field=models.BooleanField(default=False),
        ),
    ]
