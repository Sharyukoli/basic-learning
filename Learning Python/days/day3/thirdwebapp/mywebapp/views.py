from django.shortcuts import render
# views.py
from django.http import HttpResponse

def home(request):
    return HttpResponse("Hello, world of django")

