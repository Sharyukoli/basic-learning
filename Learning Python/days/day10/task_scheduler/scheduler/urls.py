from django import views
from django.contrib.auth.views import LoginView, LogoutView
from django.urls import path

from . import views  # Import the views from your current app

urlpatterns = [
    path('login/', LoginView.as_view(template_name='scheduler/login.html'), name='login'),
    path('logout/', LogoutView.as_view(), name='logout'),
    path('', views.task_list, name='task_list'),
    path('create/', views.create_task, name='create_task'),
]





