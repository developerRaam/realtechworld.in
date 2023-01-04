from PIL import Image

# Open the image
im = Image.open('service1.jpg')

# Save the image to a PDF file
im.save('image.pdf')