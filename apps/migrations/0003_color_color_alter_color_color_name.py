# Generated by Django 4.1.1 on 2023-01-02 16:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps', '0002_color'),
    ]

    operations = [
        migrations.AddField(
            model_name='color',
            name='color',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='color',
            name='color_name',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
