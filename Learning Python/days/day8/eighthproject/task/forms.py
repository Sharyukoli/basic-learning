from django import forms
from .models import Task

class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['title',  'description']

        widgets = {
            'description': forms.Textarea(attrs={'rows': 2, 'cols': 40}),  # Adjust rows and columns as needed
        }
