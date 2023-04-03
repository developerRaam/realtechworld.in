from django.db import models
from blogs.models import BlogPost

# Create your models here.
class Analytic(models.Model):
    blog_id = models.ForeignKey(BlogPost, verbose_name="Blog Name", on_delete=models.CASCADE)
    on_date = models.DateTimeField(auto_now_add=True)

    
    