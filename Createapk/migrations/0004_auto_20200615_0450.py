# Generated by Django 2.1.5 on 2020-06-15 04:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Createapk', '0003_auto_20200608_0110'),
    ]

    operations = [
        migrations.AlterField(
            model_name='apkinfo',
            name='website_url',
            field=models.URLField(max_length=1200),
        ),
    ]