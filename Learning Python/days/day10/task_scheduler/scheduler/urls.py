from django.contrib.auth.views import LoginView
from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name='home'),  # Home page
    path('tasks/', views.task_list, name='task_list'),  # Task list page
    path('create/', views.create_task, name='create_task'), 
      path('login/', LoginView.as_view(template_name='scheduler/login.html'), name='login'),
    # Create task page
   
]


from django.contrib.auth.views import LoginView
