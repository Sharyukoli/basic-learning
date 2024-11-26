# Create your models here.
from django.db import models
from django.utils.timezone import now


class Task(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    execution_time = models.DateTimeField()
    is_executed = models.BooleanField(default=False)

    def __str__(self):
        return self.name
