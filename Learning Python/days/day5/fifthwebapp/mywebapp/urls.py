# mywebapp/urls.py

from django.contrib import admin
from django.urls import path
from mywebapp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.book_list, name='book_list'),
    path('book/create/', views.create_book, name='create_book'),
    path('book/<int:pk>/update/', views.update_book, name='update_book'),
    path('book/<int:pk>/delete/', views.delete_book, name='delete_book'),
]
