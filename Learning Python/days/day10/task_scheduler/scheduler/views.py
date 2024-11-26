from threading import Timer

# Create your views here.
from django.shortcuts import redirect, render
from django.urls import path
from django.utils.timezone import now

from . import views
from .forms import TaskForm
from .models import Task

# Sample task data
tasks = [
    {"id": 1, "name": "Task 1", "progress": [10, 20, 50, 70, 100]},
    {"id": 2, "name": "Task 2", "progress": [5, 15, 25, 50, 80]},
    {"id": 3, "name": "Task 3", "progress": [0, 30, 60, 90, 100]},
]

def task_list(request):
    return render(request, 'task_list.html', {'tasks': tasks})

def task_detail(request, task_id):
    # Get the task by ID
    task = next((task for task in tasks if task["id"] == task_id), None)
    if not task:
        return render(request, '404.html', {})  # Show a 404 page if the task is not found
    return render(request, 'task_detail.html', {'task': task})



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
