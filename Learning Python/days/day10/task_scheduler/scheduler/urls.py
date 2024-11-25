from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),  # Home page
    path('tasks/', views.task_list, name='task_list'),  # Task list page
    path('create/', views.create_task, name='create_task'),  # Create task page
   
]
