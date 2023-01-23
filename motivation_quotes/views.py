from django.shortcuts import render,redirect,HttpResponse
from .models import *
from django.core.paginator import Paginator

# Create your views here.
def MotivationQuotes(request):
    qoutes = Quotes.objects.all().order_by('-on_date')
    # Show 2 objects per page
    paginator = Paginator(qoutes, 20) 
    page = request.GET.get('page')
    objects = paginator.get_page(page)
    context = {
        'objects':objects
    }
    return render(request, "motivation_quotes/quotes.html",context)