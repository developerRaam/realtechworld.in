from django.shortcuts import render,redirect,HttpResponse
from .models import *
from PIL import Image, ImageDraw, ImageFont
from mimetypes import MimeTypes
import qrcode
import os, random, math
from datetime import datetime
from django.contrib import messages
# Create your views here.

#==============================  Home ==========================================
def Home(request):
    return render(request, "apps/home.html")

#==============================  All tools ==========================================
def Tools(request):
    return render(request, "apps/tools.html")

#==============================  Add watermark ==========================================
def CopyrightApply(input_path, text)->str:
    photo = Image.open(input_path)
    w,h = photo.size
    drawing = ImageDraw.Draw(photo)
    text = f"© {text} "
    font = ImageFont.truetype('ANTQUAB.TTF',20)
    text_w, text_h = drawing.textsize(text, font)
    pos = w - text_w, (h - text_h) - 5
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
            image = AddImageWaterMark.objects.create(image=image, watermark_text=w_text)
            image.save()
            output_path = CopyrightApply(f'static/images/{image.image}',w_text)
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
    return render(request, "apps/color-picker.html",{'colors':colors})

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