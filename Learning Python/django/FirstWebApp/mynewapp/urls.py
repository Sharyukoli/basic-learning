# D:\FirstWebApp\mynewapp\urls.py

from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),  # Map the root URL to 'home' view
]
