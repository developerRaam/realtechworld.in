from django.shortcuts import render

# Create your views here.
def DsaQuestionsHome(request):
    return render(request, "dsa_questions/home.html")
