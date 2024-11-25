from threading import Timer

# Create your views here.
from django.shortcuts import redirect, render
from django.utils.timezone import now

from .forms import TaskForm
from .models import Task


def schedule_task(task):
    # Logic to execute the task (for simplicity, just marking it as executed)
    task.is_executed = True
    task.save()
    print(f"Executed task: {task.name}")

def task_list(request):
    tasks = Task.objects.all()
    return render(request, '/task_list.html', {'tasks': tasks})

def create_task(request):
    if request.method == 'POST':
        form = TaskForm(request.POST)
        if form.is_valid():
            task = form.save()

            # Schedule the task execution
            delay = (task.execution_time - now()).total_seconds()
            Timer(delay, schedule_task, [task]).start()

            return redirect('task_list')
    else:
        form = TaskForm()
    return render(request, 'scheduling/create_task.html', {'form': form})
