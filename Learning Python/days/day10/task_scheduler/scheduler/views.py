from threading import Timer

from django.shortcuts import redirect, render
from django.utils.timezone import now

from .forms import TaskForm
from .models import Task


# View for rendering the home page
def home(request):
    return render(request, 'scheduler/home.html')  # Render the home.html template

# View to display all tasks
def task_list(request):
    tasks = Task.objects.all()  # Get all tasks from the database
    return render(request, 'scheduler/task_list.html', {'tasks': tasks})

# View to display details of a single task
def task_detail(request, task_id):
    task = Task.objects.get(id=task_id)  # Get the task by ID from the database
    return render(request, 'scheduler/task_detail.html', {'task': task})

# View to create a new task
def create_task(request):
    if request.method == "POST":
        form = TaskForm(request.POST)
        if form.is_valid():
            form.save()  # Save the new task to the database
            return redirect('task_list')  # Redirect to the task list after creating a task
    else:
        form = TaskForm()
    return render(request, 'scheduler/create_task.html', {'form': form})

# Function to simulate task scheduling (e.g., run a task after a delay)
def schedule_task(task):
    # Logic to execute the task (for simplicity, just marking it as executed)
    task.is_executed = True
    task.save()
    print(f"Executed task: {task.name}")

# Example function to demonstrate task progress
def update_task_progress():
    tasks = Task.objects.all()
    for task in tasks:
        if not task.is_executed:
            task.progress = 100  # Simulate task completion
            task.is_executed = True
            task.save()
            print(f"Task {task.name} marked as completed")
