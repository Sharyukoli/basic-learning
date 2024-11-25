from django.urls import path
from django.contrib.auth.views import LoginView
from . import views

urlpatterns = [
    path('', views.home, name='home'),  # Home page
    path('tasks/', views.task_list, name='task_list'),  # Task list page
    path('create/', views.create_task, name='create_task'),  # Create task page
    path('login/', LoginView.as_view(template_name='scheduler/login.html'), name='login'),  # Login page
]
