# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Administrator(models.Model):
    admin_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    age = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'administrator'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Branch(models.Model):
    branch_id = models.CharField(primary_key=True, max_length=10)
    branch_name = models.CharField(max_length=100)
    department_code = models.ForeignKey('Department', models.DO_NOTHING, db_column='department_code', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'branch'


class Courses(models.Model):
    course_id = models.IntegerField(primary_key=True)
    department_code = models.ForeignKey('Department', models.DO_NOTHING, db_column='department_code', blank=True, null=True)
    year = models.IntegerField()
    semester = models.IntegerField()
    branch = models.CharField(max_length=50, blank=True, null=True)
    faculty = models.ForeignKey('Faculty', models.DO_NOTHING, blank=True, null=True)
    course_name = models.CharField(max_length=100)
    course_description = models.TextField(blank=True, null=True)
    course_duration = models.CharField(max_length=50, blank=True, null=True)
    capacity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'courses'


class Department(models.Model):
    department_code = models.CharField(primary_key=True, max_length=10)
    department_name = models.CharField(max_length=100)
    department_email = models.CharField(max_length=100, blank=True, null=True)
    department_phone_number = models.CharField(max_length=15, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'department'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Faculty(models.Model):
    faculty_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    age = models.IntegerField(blank=True, null=True)
    department_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='department_code', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'faculty'


class FeesDetail(models.Model):
    fee_id = models.IntegerField(primary_key=True)
    student = models.ForeignKey('Student', models.DO_NOTHING, blank=True, null=True)
    status = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'fees_detail'


class LoginCredentials(models.Model):
    username = models.CharField(primary_key=True, max_length=255)
    password = models.CharField(max_length=255)
    student = models.ForeignKey('Student', models.DO_NOTHING, blank=True, null=True)
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING, blank=True, null=True)
    admin = models.ForeignKey(Administrator, models.DO_NOTHING, blank=True, null=True)
    user_type = models.CharField(max_length=13)

    class Meta:
        managed = False
        db_table = 'login_credentials'


class Message(models.Model):
    id = models.CharField(primary_key=True, max_length=50)
    sender = models.ForeignKey('Student', models.DO_NOTHING, blank=True, null=True)
    receiver = models.ForeignKey('Student', models.DO_NOTHING, related_name='message_receiver_set', blank=True, null=True)
    message = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField(blank=True, null=True)
    status = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'message'


class ServerAdministrator(models.Model):
    admin_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100, blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField()
    role = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'server_administrator'


class ServerBranch(models.Model):
    branch_id = models.CharField(primary_key=True, max_length=10)
    branch_name = models.CharField(max_length=100)
    department_code = models.ForeignKey('ServerDepartment', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'server_branch'


class ServerCourses(models.Model):
    course_id = models.AutoField(primary_key=True)
    year = models.IntegerField()
    semester = models.IntegerField()
    branch = models.CharField(max_length=50)
    course_name = models.CharField(max_length=100)
    course_description = models.TextField(blank=True, null=True)
    course_duration = models.CharField(max_length=50, blank=True, null=True)
    capacity = models.IntegerField()
    department_code = models.ForeignKey('ServerDepartment', models.DO_NOTHING)
    faculty_id = models.ForeignKey('ServerFaculty', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'server_courses'


class ServerDepartment(models.Model):
    department_code = models.CharField(primary_key=True, max_length=10)
    department_name = models.CharField(max_length=100)
    department_email = models.CharField(max_length=100, blank=True, null=True)
    department_phone_number = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'server_department'


class ServerFaculty(models.Model):
    faculty_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100, blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    age = models.IntegerField()
    specialization = models.CharField(max_length=100, blank=True, null=True)
    department_code = models.ForeignKey(ServerDepartment, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'server_faculty'


class ServerLogincredentials(models.Model):
    username = models.CharField(primary_key=True, max_length=50)
    password = models.CharField(max_length=255)
    usn = models.CharField(db_column='USN', max_length=20, blank=True, null=True)  # Field name made lowercase.
    user_type = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'server_logincredentials'


class ServerMessage(models.Model):
    id = models.CharField(db_column='ID', primary_key=True, max_length=50)  # Field name made lowercase.
    message = models.TextField()
    timestamp = models.DateTimeField()
    status = models.CharField(max_length=10)
    subject = models.CharField(max_length=200, blank=True, null=True)
    is_urgent = models.IntegerField()
    receiver_id = models.ForeignKey('self', models.DO_NOTHING)
    sender_id = models.ForeignKey('self', models.DO_NOTHING, related_name='servermessage_sender_id_set')

    class Meta:
        managed = False
        db_table = 'server_message'


class ServerStudent(models.Model):
    student_id = models.AutoField(db_column='student_ID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100, blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    year = models.IntegerField()
    semester = models.IntegerField()
    status = models.CharField(max_length=10)
    branch_id = models.ForeignKey(ServerBranch, models.DO_NOTHING)
    department_code = models.ForeignKey(ServerDepartment, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'server_student'


class Student(models.Model):
    student_id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    year = models.IntegerField(blank=True, null=True)
    department_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='department_code', blank=True, null=True)
    branch = models.ForeignKey(Branch, models.DO_NOTHING, blank=True, null=True)
    semester = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'student'
