from django.db import models
from autoslug import AutoSlugField
from tinymce.models import HTMLField

# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=50, null=True, blank=True)
    slug = AutoSlugField(populate_from="name",unique=True,null=True, always_update=True)
    date = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "difficulty"
    
class SubCategory(models.Model):
    name = models.CharField(max_length=50, null=True, blank=True)
    slug = AutoSlugField(populate_from="name",unique=True,null=True, always_update=True)
    date = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.name
    class Meta:
        verbose_name_plural = "Topics"


class DsaQuestion(models.Model):
    question_name = models.CharField(max_length=300, blank=True, null=True)
    slug = AutoSlugField(populate_from="question_name",unique=True,null=True, always_update=True)
    cat_id = models.ForeignKey(Category, verbose_name="Category",null=True,blank=True, on_delete=models.SET_NULL)
    sub_cat_id = models.ForeignKey(SubCategory, verbose_name="SubCategory",null=True,blank=True, on_delete=models.SET_NULL)
    url = models.URLField(max_length=200,null=True,blank=True)
    description = HTMLField(null=True, blank=True)
    c_language = HTMLField(null=True, blank=True)
    cpp_language = HTMLField(null=True, blank=True)
    javascript = HTMLField(null=True, blank=True)
    java = HTMLField(null=True, blank=True)
    python = HTMLField(null=True, blank=True)
    date = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.question_name
    class Meta:
        verbose_name_plural = "DSA Question"


class Platform(models.Model):
    name = models.CharField(max_length=50)
    slug = AutoSlugField(populate_from="name",unique=True,null=True, always_update=True)
    def __str__(self):
        return self.name

class SelectPlatform(models.Model):
    question_id = models.ForeignKey(DsaQuestion, on_delete=models.CASCADE)
    tag = models.ForeignKey(Platform, verbose_name="Platform", on_delete=models.CASCADE)
    class Meta:
        verbose_name_plural = 'Choose Platform' 


class Tags(models.Model):
    tag_name = models.CharField(max_length=50, verbose_name="Tag Name")
    def __str__(self):
        return self.tag_name
    class Meta:
        verbose_name_plural = "Tags"

class SelectTags(models.Model):
    question_id = models.ForeignKey(DsaQuestion, on_delete=models.CASCADE)
    tag = models.ForeignKey(Tags, verbose_name="Tag", on_delete=models.CASCADE)
    class Meta:
        verbose_name_plural = 'Select Tag' 
