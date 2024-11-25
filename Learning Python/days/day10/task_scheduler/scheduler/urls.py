from django.contrib.auth.views import LoginView
from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name='home'),  # Home page
    path('login/', LoginView.as_view(template_name='scheduler/login.html'), name='login'),  # Login page
    path('tasks/', views.task_list, name='task_list'),  # Task list
]
