from django.urls import path
from dsa_questions import views

urlpatterns = [
    path("",views.DsaQuestionsHome),
    path("view/<slug>", views.QuestionView, name="detail"),
    path("search/",views.Searching, name="searching"),
    path("filter/",views.Filter_By_Category,),
    path("show-question/",views.Show_Questions),
]
