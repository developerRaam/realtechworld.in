from django.urls import path,include
from .import views


urlpatterns = [
    path("",views.Home, name="home"),
    path("sitemap/",views.SiteMap),
    path("ads.txt/",views.AdsTxt),
    path("contact-us/",views.ContactUs, name="contact-us"),
    path("services/",views.Services),
    path("portfolio/",views.OurPortfolio),
    path("about-us/",views.AboutUs, name="about-us"),
    path("tools/",views.Tools, name="tools"),
    path("add-watermark/",views.AddWatermark, name="add-watermark"),
    path("word-count/",views.WordCount, name="word-count"),
    path("color-picker/",views.ColorPicker),
    path("generate-qrcode/",views.GenerateQrcode, name="qrcode"),
    path("convert-image-to-pdf/",views.ImageToPdf, name="imageTopdf"),
    path("box-shadow/",views.BoxShadow),
    path("generate-password/",views.GeneratePassword),
    path("amazon/",views.AmazonProduct),
]