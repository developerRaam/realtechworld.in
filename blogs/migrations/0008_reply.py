# Generated by Django 4.1 on 2023-01-14 16:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blogs', '0007_comments_name_alter_comments_post_id'),
    ]

    operations = [
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
    ]