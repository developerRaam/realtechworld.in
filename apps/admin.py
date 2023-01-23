from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Color)
admin.site.register(Qrcode)
admin.site.register(AddImageWaterMark)
admin.site.register(Portfolio)

class ContactUSAdmin(admin.ModelAdmin):
    list_display = ("name","email","Contact","message")
admin.site.register(ContactUS,ContactUSAdmin)