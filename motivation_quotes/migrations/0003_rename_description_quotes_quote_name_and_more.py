# Generated by Django 4.1 on 2023-01-20 19:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('motivation_quotes', '0002_category_slug'),
    ]

    operations = [
        migrations.RenameField(
            model_name='quotes',
            old_name='description',
            new_name='quote_name',
        ),
        migrations.AlterField(
            model_name='quotes',
            name='dislike',
            field=models.IntegerField(default=0, editable=False),
        ),
        migrations.AlterField(
            model_name='quotes',
            name='like',
            field=models.IntegerField(default=0, editable=False, verbose_name='Likes'),
        ),
    ]
