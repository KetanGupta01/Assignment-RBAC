from django.shortcuts import render

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import *
from .models import *


class TestAPI(APIView):
    def get(self, request):
        return Response({"message": "Hello from Django!"})

@api_view(['POST'])
def Verify(request):
    data = request.data
    username = data.get('username')
    password = data.get('password')
    try:
        user = LoginCredentials.objects.get(username=username)
        print(user.password)
        if password == user.password:
            if user.user_type == "student":
                usn = user.student.student_id
            elif user.user_type == "faculty":
                usn = user.faculty.faculty_id
            else:
                usn = user.admin.admin_id
                 
            return Response({"Status": "Success", "USN": usn, "user_type": user.user_type})
        else:
            return Response({"Status": "Failure1"})
    except LoginCredentials.DoesNotExist:
            return Response({"Status": "Failure2"})

@api_view(['GET'])
def get_student_details(request):
     usn = request.GET.get('usn')
     print("Hi ",usn)
     student = Student.objects.filter(student_id = usn).first()
     print("STUDENT\n",student)
     year, sem, dep = student.year, student.semester, student.department_code
     print(year, sem, dep)
     department = Department.objects.get(department_code = dep.department_code)
     print(department)
     course = Courses.objects.filter(department_code=department, semester=sem, year=year)
     print("COURSE\n",course.values())
     fee = FeesDetail.objects.filter(student=usn)
     print(fee)
     student_data = StudentSerializer(student).data
     department_data = DepartmentSerializer(department).data
     courses_data = CourseSerializer(course, many=True).data
     fees_data = FeeDetailSerializer(fee, many=True).data

     print("hi\n\n\n\n")
     for course in courses_data:
        #  fid = course.facu
        # print(course)
        fid = course['faculty'] 
        faculty = Faculty.objects.get(faculty_id=fid)
        course['faculty'] = faculty.name

     return Response({
        "Student": student_data,
        "Department": department_data,
        "Courses": courses_data,
        "Fees": fees_data,
    })
            
        
@api_view(['GET'])
def get_admin_details(request):
    usn = request.GET.get('usn')
    admin = Administrator.objects.filter(admin_id=usn).first()
    admin_data = AdministratorDetailSerializer(admin).data
    print(admin_data)
    return Response({"Admin": admin_data})

@api_view(['GET'])
def get_adminStudent_details(request):
    students = Student.objects.all()
    student_data = StudentSerializer(students, many=True).data 
    return Response({"Students": student_data})

@api_view(['GET'])
def get_adminFaculty_details(request):
    faculties = Faculty.objects.all()
    faculty_data = FacultyDetailSerializer(faculties, many=True).data 
    return Response({"Faculty": faculty_data})

@api_view(['GET'])
def get_adminCourses_details(request):
    courses = Courses.objects.all()
    course_data = CourseSerializer(courses, many=True).data 
    return Response({"Course": course_data})

@api_view(['GET'])
def get_adminFees_details(request):
    fees = FeesDetail.objects.all()
    fee_data = FeeDetailSerializer(fees, many=True).data 
    return Response({"Fee": fee_data})
