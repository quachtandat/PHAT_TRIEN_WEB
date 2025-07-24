from django.db import models
from django.contrib.auth.models import User

class Task(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField(blank=True)
    is_completed = models.BooleanField(default=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


#  1. Lấy tất cả các task

# tasks = Task.objects.all()
#  2. Lấy task của một user cụ thể

# from django.contrib.auth.models import User
# user = User.objects.get(username='alice')
# tasks = Task.objects.filter(user=user)

#  3. Lấy các task đã hoàn thành
# completed_tasks = Task.objects.filter(is_completed=True)

#  4. Lấy task đầu tiên
# first_task = Task.objects.first()

#  5. Tìm theo tiêu đề (title chứa từ khóa)
# tasks = Task.objects.filter(title__icontains="meeting")  # chứa chữ "meeting"

#  6. Tạo một task mới
# Task.objects.create(
#     title="Learn Django",
#     description="Follow tutorial",
#     is_completed=False,
#     user=user
# )

#  7. Cập nhật một task
# task = Task.objects.get(id=1)
# task.is_completed = True
# task.save()

#  8. Xóa một task
# task = Task.objects.get(id=1)
# task.delete()