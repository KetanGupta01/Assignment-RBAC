from rest_framework import serializers
from .models import Student, Department, Courses, FeesDetail, Faculty, Administrator

class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = '__all__'

class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Department
        fields = '__all__'

class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Courses
        fields = '__all__'

class FeeDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = FeesDetail
        fields = '__all__'

class FacultyDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Faculty
        fields = '__all__'

class AdministratorDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Administrator
        fields = '__all__'
