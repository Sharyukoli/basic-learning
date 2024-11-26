# Create your views here.
from threading import Timer

# Create your views here.
from django.shortcuts import redirect, render
from django.urls import path
from django.utils.timezone import now

from . import views
from .forms import TaskForm
from .models import Task


def home(request):
    return render(request, 'scheduler/home.html')  # Render the home.html template

def task_list(request):
    tasks = Task.objects.all()
    return render(request, 'scheduler/task_list.html', {'tasks': tasks})

def create_task(request):
    if request.method == "POST":
        form = TaskForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('task_list')  # Redirect to the task list after creating a task
    else:
        form = TaskForm()
    return render(request, 'scheduler/create_task.html', {'form': form})

def schedule_task(task):
    # Logic to execute the task (for simplicity, just marking it as executed)
    task.is_executed = True
    task.save()
    print(f"Executed task: {task.name}")
