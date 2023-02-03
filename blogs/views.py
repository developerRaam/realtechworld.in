from django.shortcuts import render,redirect,HttpResponse
from .models import Category, BlogPost,Comments
from django.core.paginator import Paginator

# Create your views here.
#============= Blogs ========================

#========= Blog Home page =============
def Blogs(request):    
    posts = BlogPost.objects.all().order_by('-on_date')
    # Show 2 objects per page
    paginator = Paginator(posts, 10) 
    page = request.GET.get('page')
    objects = paginator.get_page(page)
        
    context = {
        "posts":posts,
        "objects":objects,
    }
    return render(request, "blogs/posts.html",context)

#================= Detail page ============
def BlogDetail(request, slug):    
    posts = BlogPost.objects.all().order_by('-on_date')
    product = BlogPost.objects.get(slug=slug)
    category_id = product.category_id_id
    related_post = BlogPost.objects.filter(category_id_id=category_id).order_by('-on_date')[:10]
    # Update views
    product.views = int(product.views) + 1
    product.save()
    # date 
    on_date = product.on_date.strftime("%b-%m-%Y")
    #Show comments
    comment = Comments.objects.filter(post_id_id=product.id)
    
    context = {
        "product":product,
        "posts":posts, 
        "comment":comment,
        "related_post":related_post,
        "category_id":category_id
    }
    return render(request, "blogs/post-details.html",context)

#================= Filter by category ============
def Filter_Category(request, cat_slug):
    cat = Category.objects.get(slug=cat_slug)
    category_name = cat.category_name
    filter_cat = BlogPost.objects.filter(category_id_id=cat.id).order_by('-on_date')
    # Show 2 objects per page
    paginator = Paginator(filter_cat, 10) 
    page = request.GET.get('page')
    filter_cat = paginator.get_page(page)
    context = {
        "objects":filter_cat,
        "category_name":category_name
    }
    return render(request, "blogs/category-post.html",context)


def Searching(request):
    if request.method == 'GET':
        search_bar = request.GET['q']
        if search_bar == "":
            return redirect('/')
        else:
            search_data = BlogPost.objects.filter(title__icontains=search_bar)
            context={
                "objects":search_data,
                "search_bar":search_bar,
            }
            return render(request, "blogs/blog-search.html", context)
    else:
        HttpResponse("page not found")


#================ Comments =========================
def BlogComments(request):
    if request.method == 'POST':
        post_id = request.POST['post_id']
        name = request.POST['name']
        email = request.POST['email']
        slug = request.POST['post_slug']
        comment = request.POST['comment']
        if (post_id and name and email and slug and comment) != '' :
            save_comment = Comments.objects.create(post_id_id=post_id,name=name,email=email,comment=comment)
            save_comment.save()
            return redirect('blog-detail',slug)
        else:
            return HttpResponse("All field are required")
    else:
        return HttpResponse("Comment not send check your internet") 