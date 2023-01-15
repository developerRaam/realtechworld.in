from django.contrib import admin
from .models import *

# Register your models here.

class BlogPostAdmin(admin.ModelAdmin):
    list_display = ("title","views","on_date")
admin.site.register(BlogPost,BlogPostAdmin)

class CommentsAdmin(admin.ModelAdmin):
    list_display = ("post_id","name","comment","on_date")
admin.site.register(Comments,CommentsAdmin)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ("category_name","slug","on_date")
admin.site.register(Category,CategoryAdmin)
