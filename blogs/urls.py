from django.urls import path,include
from .import views


urlpatterns = [
    path("",views.Blogs ),
    path("<slug>",views.BlogDetail,name="blog-detail"),
    path("c/<cat_slug>",views.Filter_Category,name="category"),
    path("search/",views.Searching, name="searching"),
    path("comment/",views.BlogComments, name="blog-comment"),
]