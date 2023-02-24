from django.shortcuts import render,redirect,HttpResponse
from .models import *
from blogs.models import BlogPost,Category
from PIL import Image, ImageDraw, ImageFont
from mimetypes import MimeTypes
import qrcode
import os, random, math, requests
from datetime import datetime
from django.contrib import messages
from django.core.paginator import Paginator
import boto3
# Create your views here.

#==============================  Home ==========================================
def Home(request):
    home_blog = BlogPost.objects.all().order_by('-on_date')[0:3]
    category = Category.objects.all()
    posts = BlogPost.objects.all().order_by('-on_date')
    # Filter data by category ID
    data = []
    count = 0
    for cat in category:
        for post in posts:
            if cat.id == post.category_id_id:
                if count < 6:
                    d = post
                    data.append(d)
                count = count + 1
        count = 0 #reset
    context = {
        'home_blog':home_blog,
        'category':category,
        'posts':data,
    }
    return render(request, "apps/home.html",context)

#==============================  All tools ==========================================
def SiteMap(request):
    return render(request, "sitemap.xml")

#==============================  ads.txt ==========================================
def AdsTxt(request):
    f = open('abs.txt', 'r')
    file_content = f.read()
    f.close()
    return HttpResponse(file_content, content_type="text/plain")

#==============================  All tools ==========================================
def Tools(request):
    return render(request, "apps/tools.html")


#==============================  All tools ==========================================
def ContactUs(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        mobile = request.POST['mobile']
        message = request.POST['message']

        try:
            insert = ContactUS.objects.create(name=name,email=email,Contact=mobile,message=message)
            insert.save()
            messages.success(request, "Message send")
            return redirect('contact-us')
        except:
            messages.warning(request, "Message sending failed")
            return redirect('contact-us')
    return render(request, "contact-us.html")


#==============================  All tools ==========================================
def AboutUs(request):
    return render(request, "about-us.html")

#==============================  All tools ==========================================
def Services(request):
    return render(request, "services.html")

#==============================  All tools ==========================================
def OurPortfolio(request):
    portfolio = Portfolio.objects.all()
    context={
        'portfolio':portfolio
    }
    return render(request, "portfolio.html",context)

#==============================  Add watermark ==========================================
def CopyrightApply(input_path, text)->str:
    photo = Image.open(input_path)
    w,h = photo.size
    drawing = ImageDraw.Draw(photo)
    text = f"© {text} "
    font = ImageFont.truetype('ANTQUAB.TTF',30)
    text_w, text_h = drawing.textsize(text, font)
    pos = w - text_w, (h - text_h) - 10
    c_text = Image.new('RGB', (text_w, text_h), color="#000000")
    drawing = ImageDraw.Draw(c_text)
    drawing.text((0,0), text, fill="#fff" , font=font)
    
    c_text.putalpha(100)
    photo.paste(c_text, pos, c_text)
    
    file_name = f'{uuid.uuid4()}.png'
    output_path = f'static/images/watermark_output/{file_name}'
    photo.save(output_path)
    
    return f'http://127.0.0.1:8000/images/watermark_output/{file_name}'
    
def AddWatermark(request):
    if request.method == 'POST':
        image = request.FILES['image']
        size = image.size
        if size <= 5242931: #check size of file
            w_text = request.POST.get('w_text')
            water_text = AddImageWaterMark.objects.create(watermark_text=w_text)
            water_text.save()
            output_path = CopyrightApply(image,w_text)
            return render(request, "apps/add-watermark.html",{'output_path':output_path})
        else:
            return render(request, "apps/add-watermark.html",{'error':'Please upload image only less than 5MB'})
    return render(request, "apps/add-watermark.html")


#==============================  Word counter ==========================================
def WordCount(request):
    return render(request, "apps/word-count.html")

#==============================  Color picker ==========================================
def ColorPicker(request):
    colors = Color.objects.all()
    
    paginator = Paginator(colors, 2)  # Show 2 objects per page
    page = request.GET.get('page')
    objects = paginator.get_page(page)
    
    context = {
        'objects':objects,
    }
    return render(request, "apps/color-picker.html",context)

#==============================  Generate qrcode ==========================================
def GenerateQrcode(request):
    if request.method == 'POST':
        qr_text = request.POST.get('qr_text')
        text = Qrcode.objects.create(text=qr_text)
        text.save()
        # generating a QR code using the make() function  
        qr_img = qrcode.make(qr_text)  
        # saving the image file  
        file_name = f'{uuid.uuid4()}.png'
        qr_output = f'static/images/qrcode_output/{file_name}'
        qr_img.save(qr_output)
        q_output = f'http://127.0.0.1:8000/images/qrcode_output/{file_name}'
        return render(request, "apps/qrcode.html",{'qr_output':q_output})
    return render(request, "apps/qrcode.html")


#==============================  convert image to pdf ==========================================
def convert_size(size_bytes):
   if size_bytes == 0:
       return "0B"
   size_name = ("B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB")
   i = int(math.floor(math.log(size_bytes, 1024)))
   p = math.pow(1024, i)
   s = round(size_bytes / p, 2)
   return "%s %s" % (s, size_name[i])

def ImageToPdf(request):
    if request.method == 'POST':
        image = request.FILES['image']
        size = image.size # check file size
        type = MimeTypes().guess_type(str(image))[0] #check file type
        if type == 'image/png' or type == 'image/jpg' or type == 'image/jpeg' :
            if size <= 5242931: # check of image < 5MB
                # Open the image
                img = Image.open(image)
                file_name = f'{uuid.uuid4()}.pdf' #random id
                pdf_output = f'static/images/image_to_pdf/{file_name}'
                img.save(pdf_output)  # Save the image to a PDF file
                pdf_output = os.path.join(f'images/image_to_pdf/{file_name}')
                return render(request, "apps/covert-img-to-pdf.html",{'pdf_output':pdf_output})
            else:
                return render(request, "apps/covert-img-to-pdf.html",{'error':'Please upload image only less than 5MB'})
        else:
            return render(request, "apps/covert-img-to-pdf.html",{'error':'Please choose PNG, JPG, JPEG file'})
    return render(request, "apps/covert-img-to-pdf.html")

def BoxShadow(request):
    response = requests.get("https://api.covid19api.com/countries").json()
    return render(request, "apps/box-shadow.html",{'response':response})

#==============================  Generate password ==========================================
def GeneratePassword(request):
    lower="abcdefghijklmnopqrstwxyz"
    upper="ABCDEFGHIKJLMNOPQRSTWXYZ"
    number="0123456789"
    symbol="=@#$%-;:"
    all=lower+upper+number+symbol
    length=8
    password="".join(random.sample(all,length))
    password = str(password)
    return render(request, "apps/generate-password.html",{'password':password})


# def AmazonProduct(request):
#     client = boto3.client('product-advertising-api', region_name='in', 
#                       aws_access_key_id='<YOUR ACCESS KEY>', 
#                       aws_secret_access_key='<YOUR SECRET KEY>')

#     response = client.search_items(
#         SearchIndex='All',
#         Keywords='<YOUR SEARCH TERM>',
#         ResponseGroup='Images,ItemAttributes'
#     )

#     items = response['SearchResult']['Items']
#     return render(request, "apps/amazon.html",{'items':items})

def AmazonProduct(request):
    url = "https://moviesminidatabase.p.rapidapi.com/movie/id/%7Bmovie_id%7D/cast/"

    headers = {
        "X-RapidAPI-Key": "dae72491b3msh5707c93e51f27e5p13a81bjsnfc0d8b1a1101",
        "X-RapidAPI-Host": "moviesminidatabase.p.rapidapi.com"
    }

    response = requests.request("GET", url, headers=headers)

    output = response.text
    
    return render(request, "apps/amazon.html",{'output':output})
