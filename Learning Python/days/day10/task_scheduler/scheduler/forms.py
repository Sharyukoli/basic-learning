from django import forms

from .models import Task


class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['name', 'description', 'execution_time']  # Ensure these fields exist in the Task model
        widgets = {
            'name': forms.TextInput(attrs={
                'class': 'form-control', 
                'placeholder': 'Enter task name'
            }),
            'description': forms.Textarea(attrs={
                'class': 'form-control', 
                'placeholder': 'Enter task description',
                'rows': 4
            }),
            'execution_time': forms.DateTimeInput(attrs={
                'type': 'datetime-local',
                'class': 'form-control'
            }),
        }
