from django.contrib import admin
from .models import *

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ("cat_name","on_date")
admin.site.register(Category,CategoryAdmin)

class QuotesAdmin(admin.ModelAdmin):
    list_display = ("quote_name","cat_id","like","dislike","on_date")
admin.site.register(Quotes,QuotesAdmin)