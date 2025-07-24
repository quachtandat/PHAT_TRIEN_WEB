from django.shortcuts import render, redirect
from .models import Task
from django.contrib.auth.decorators import login_required

@login_required
def user_tasks(request):
    tasks = Task.objects.filter(user=request.user)
    return render(request, 'tasks/user_tasks.html', {'tasks': tasks})

@login_required
def complete_task(request, task_id):
    task = Task.objects.get(id=task_id, user=request.user)
    task.is_completed = True
    task.save()
    return redirect('user_tasks')
