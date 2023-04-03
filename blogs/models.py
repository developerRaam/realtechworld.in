from django.db import models
from autoslug import AutoSlugField
from tinymce.models import HTMLField

# Create your models here.

class Category(models.Model):
    category_name = models.CharField(max_length=50)
    slug = AutoSlugField(populate_from="category_name",unique=True,null=True, always_update=True)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.category_name


class BlogPost(models.Model):
    category_id = models.ForeignKey(Category, on_delete=models.CASCADE, verbose_name="Category Name")
    title = models.CharField(max_length=255)
    sub_title = models.CharField(max_length=255,null=True, blank=True)
    image = models.ImageField(upload_to="blogs/posts/",blank=True, null=True)
    slug = AutoSlugField(populate_from='title', max_length=255, unique=True,null=True, always_update=True)
    views = models.CharField(max_length=11,null=True, blank=None, editable=None, default="0")
    post_by = models.CharField(max_length=30, null=True, blank=None, default="RealTechWord", editable=None)
    description = HTMLField(null=True, blank=True)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.title
    
class Comments(models.Model):
    post_id = models.ForeignKey(BlogPost, verbose_name="Post Name", on_delete=models.CASCADE)
    name = models.CharField(max_length=50, default="none")
    email = models.CharField(max_length=50,default="None")
    comment = models.TextField()
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.comment
    
class Reply(models.Model):
    post_id = models.ForeignKey(BlogPost, verbose_name="Post Name", on_delete=models.CASCADE)
    comment_id = models.ForeignKey(Comments, verbose_name="comment Name", on_delete=models.CASCADE)
    comment_reply = models.TextField()
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.comment_reply
    
    
    
    
    