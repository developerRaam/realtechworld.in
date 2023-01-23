# Generated by Django 4.1 on 2023-01-23 12:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps', '0007_contactus'),
    ]

    operations = [
        migrations.CreateModel(
            name='Portfolio',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(blank=True, null=True, upload_to=None)),
                ('url', models.CharField(max_length=50)),
                ('on_date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
