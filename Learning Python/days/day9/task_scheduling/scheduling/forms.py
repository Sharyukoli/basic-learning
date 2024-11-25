from django import forms

from .models import Task


class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['name', 'description', 'execution_time']
        widgets = {
            'execution_time': forms.DateTimeInput(attrs={'type': 'datetime-local'}),
        }
