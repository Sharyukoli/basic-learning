from django.shortcuts import render
from django .http  import HttpResponse

#def home( request):
     #return("welcome to my page sharyu")

# helloapp/views.py
from django.http import HttpResponse

def hello_world(request):
    return HttpResponse("Hello, Welcome to django learning series")


# Create your views here.
