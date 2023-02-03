# Generated by Django 4.1 on 2023-01-20 18:47

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cat_name', models.CharField(max_length=50, verbose_name='Category Name')),
                ('on_date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Quotes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('like', models.IntegerField(verbose_name='Likes')),
                ('dislike', models.IntegerField()),
                ('description', tinymce.models.HTMLField(blank=True, null=True)),
                ('on_date', models.DateTimeField(auto_now_add=True)),
                ('cat_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='motivation_quotes.category', verbose_name='Category Name')),
            ],
        ),
    ]