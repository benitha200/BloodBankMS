from django.urls import path
from . import views


urlpatterns = [

    path('',views.patients,name="patients"),
    path('patients/register-patients/',views.patients,name="patients"),

]