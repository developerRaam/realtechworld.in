# Generated by Django 4.1 on 2023-01-08 17:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blogs', '0003_alter_blogpost_slug_alter_blogpost_views'),
    ]

    operations = [
        migrations.AddField(
            model_name='blogpost',
            name='post_by',
            field=models.CharField(blank=None, default='RealTechWord', editable=None, max_length=30, null=True),
        ),
    ]
