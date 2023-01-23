from django.db import models
import uuid
# Create your models here.
#uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)

class AddImageWaterMark(models.Model):
    watermark_text = models.CharField(max_length=100)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.watermark_text
    
    
class Color(models.Model):
    color_name = models.CharField(max_length=50,null=True, blank=True)
    color = models.CharField(max_length=20)
    
    def __str__(self):
        return self.color_name
    
class Qrcode(models.Model):
    text = models.CharField(max_length=300, null=True, blank=True)
    on_date = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.text
    
class ContactUS(models.Model):
    name = models.CharField(max_length=50,editable=None)
    email = models.CharField(max_length=50,editable=None)
    Contact = models.CharField(max_length=13,editable=None)
    message = models.TextField(editable=None)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.name
    
class Portfolio(models.Model):
    name = models.CharField(max_length=50,null=True, blank=True)
    image = models.ImageField(upload_to="portfolio/",null=True, blank=True)
    url = models.CharField(max_length=50)
    on_date = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.name
    