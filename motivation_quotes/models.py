from django.db import models
from autoslug import AutoSlugField
from tinymce.models import HTMLField

# Create your models here.
class Category(models.Model):
    cat_name = models.CharField(max_length=50, verbose_name="Category Name")
    slug = AutoSlugField(populate_from="cat_name",unique=True,null=True, always_update=True)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.cat_name
    

class Quotes(models.Model):
    cat_id = models.ForeignKey(Category, verbose_name="Category Name", on_delete=models.CASCADE)
    like = models.IntegerField(verbose_name="Likes", default=0, editable=False)
    dislike = models.IntegerField(default=0, editable=False)
    quote_name = HTMLField(null=True, blank=True)
    on_date = models.DateTimeField(auto_now_add=True)
    