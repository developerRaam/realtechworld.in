from blogs.models import Category,BlogPost

def BlogCategory(request):
    blog_category = Category.objects.all()
    side_bar_title = BlogPost.objects.all().order_by('-on_date')[:7]
    month_date = []
    for i in side_bar_title:
        d = i.on_date.strftime("%B-%Y")
        month_date.append(d)
    context = {
        'blog_category':blog_category,
        'month_date':month_date,
        'side_bar_title':side_bar_title,
    }
    return(context)

def SiteName(request):
    site_name = "Real Tech World"
    context = {
        'site_name':site_name
    }
    return(context)