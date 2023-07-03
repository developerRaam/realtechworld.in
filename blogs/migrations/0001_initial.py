# Generated by Django 4.1 on 2023-01-17 14:45

import autoslug.fields
from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BlogPost',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('sub_title', models.CharField(blank=True, max_length=255, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='blogs/posts/')),
                ('slug', autoslug.fields.AutoSlugField(always_update=True, editable=False, null=True, populate_from='title', unique=True)),
                ('views', models.CharField(blank=None, default='0', editable=None, max_length=11, null=True)),
                ('post_by', models.CharField(blank=None, default='RealTechWord', editable=None, max_length=30, null=True)),
                ('description', tinymce.models.HTMLField(blank=True, null=True)),
                ('on_date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category_name', models.CharField(max_length=50)),
                ('slug', autoslug.fields.AutoSlugField(always_update=True, editable=False, null=True, populate_from='category_name', unique=True)),
                ('on_date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Comments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='none', max_length=50)),
                ('email', models.CharField(default='None', max_length=50)),
                ('comment', models.TextField()),
                ('on_date', models.DateTimeField(auto_now_add=True)),
                ('post_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blogs.blogpost', verbose_name='Post Name')),
            ],
        ),
        migrations.CreateModel(
            name='Reply',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_reply', models.TextField()),
                ('on_date', models.DateTimeField(auto_now_add=True)),
                ('comment_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blogs.comments', verbose_name='comment Name')),
                ('post_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blogs.blogpost', verbose_name='Post Name')),
            ],
        ),
        migrations.AddField(
            model_name='blogpost',
            name='category_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blogs.category'),
        ),
    ]
