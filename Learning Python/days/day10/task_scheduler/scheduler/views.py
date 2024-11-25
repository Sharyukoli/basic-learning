from threading import Timer

from django.contrib.auth.decorators import login_required
# Create your views here.
from django.shortcuts import redirect, render
from django.urls import path
from django.utils.timezone import now

from . import views  # This imports the `views.py` file from your app
from .forms import TaskForm
from .models import Task
from django.shortcuts import render

def schedule_task(task):
    # Logic to execute the task (for simplicity, just marking it as executed)
    task.is_executed = True
    task.save()
    print(f"Executed task: {task.name}")

@login_required
def task_list(request):
    tasks = Task.objects.all()
    return render(request, 'scheduler/task_list.html', {'tasks': tasks})





@login_required
def create_task(request):
    if request.method == 'POST':
        form = TaskForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('task_list')
    else:
        form = TaskForm()
    return render(request, 'scheduler/create_task.html', {'form': form})
