# Generated by Django 4.1 on 2023-09-11 17:31

import autoslug.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('dsa_questions', '0005_alter_dsaquestion_cat_id_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Platform',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('slug', autoslug.fields.AutoSlugField(always_update=True, editable=False, null=True, populate_from='name', unique=True)),
            ],
        ),
        migrations.AlterModelOptions(
            name='category',
            options={'verbose_name_plural': 'difficulty'},
        ),
        migrations.AlterModelOptions(
            name='subcategory',
            options={'verbose_name_plural': 'Topics'},
        ),
        migrations.AddField(
            model_name='dsaquestion',
            name='url',
            field=models.URLField(blank=True, null=True),
        ),
        migrations.CreateModel(
            name='SelectPlatform',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dsa_questions.dsaquestion')),
                ('tag', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dsa_questions.platform', verbose_name='Platform')),
            ],
            options={
                'verbose_name_plural': 'Choose Platform',
            },
        ),
    ]