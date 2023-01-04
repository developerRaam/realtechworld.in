from django.db import models
import uuid
# Create your models here.

class AddImageWaterMark(models.Model):
    uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
    image = models.ImageField(upload_to="add_watermark")
    watermark_text = models.CharField(max_length=100)
    on_date = models.DateTimeField(auto_now_add=True)
    
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
    