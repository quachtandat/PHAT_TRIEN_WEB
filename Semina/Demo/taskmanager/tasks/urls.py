from django.urls import path
from . import views

urlpatterns = [
    path('', views.user_tasks, name='user_tasks'),
    path('complete/<int:task_id>/', views.complete_task, name='complete_task'),
]
