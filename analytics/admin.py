from django.contrib import admin
from analytics.models import *

# Register your models here.
class AdminAnalytic(admin.ModelAdmin):
    list_display = ("blog_id","on_date")
    list_filter = ("on_date",)
    list_per_page=15
admin.site.register(Analytic,AdminAnalytic)