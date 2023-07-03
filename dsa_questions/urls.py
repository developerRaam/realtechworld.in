from django.urls import path,include
from dsa_questions import views

urlpatterns = [
    path("",views.DsaQuestionsHome)
]
