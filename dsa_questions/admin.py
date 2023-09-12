from django.contrib import admin
from dsa_questions.models import *

# Register your models here.

admin.site.register(Category)
admin.site.register(SubCategory)
admin.site.register(Tags)
admin.site.register(Platform)

class CompanyTags(admin.StackedInline):
    model = SelectTags
    extra = 0

class PlatformSelection(admin.StackedInline):
    model = SelectPlatform
    extra = 0

class DsaQuestionAdmin(admin.ModelAdmin):
    inlines = [CompanyTags,PlatformSelection] # multiple images reference
    list_display = ('question_name','cat_id','sub_cat_id')
admin.site.register(DsaQuestion,DsaQuestionAdmin)