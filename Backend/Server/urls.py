from django.urls import path
from .views import TestAPI,Verify,Student
from . import views

urlpatterns = [
    path('test', TestAPI.as_view(), name='test-api'),
    path('verify', views.Verify, name='verify-api'),
    path('studentDetail', views.get_student_details, name='student-api'),
    path('adminDetail', views.get_admin_details, name='admin-api'),
    path('adminStudentDetail', views.get_adminStudent_details, name='admin-student-api'),
    path('adminFacultyDetail', views.get_adminFaculty_details, name='admin-faculty-api'),
    path('adminCourseDetail', views.get_adminCourses_details, name='admin-course-api'),
    path('adminFeeDetail', views.get_adminFees_details, name='admin-fee-api'),
]
