from django.urls import path
from . import views


urlpatterns = [
    path("",views.indexall,name="index"),
    path("dashboard",views.dashboard,name="dashboard"),
    path('login/',views.login,name="login"),
    path('hospital-login/',views.hospitallogin,name="login"),
    path('signup/',views.signup,name="signup"),
    path('collectors/',views.collectors,name="collectors"),
    path('collectors/register-collectors/',views.registercollectors,name="Register Collectors"),
    path('donors/',views.donors, name= "Donors"),
    path('donors/register-donors/',views.registerdonors,name="registerdonors"),
    path('patients/',views.patients,name="patients"),
    # path('',views.patients,name="patients"),
    path('rbc-stock/',views.rbcstock,name="rbcstock"),
    path('hospital-request/', views.hospitalrequest, name = "Hospital Requests"),
    path('patients/register-patients/',views.registerpatients,name="Register Patients"),
    path('blood-request/', views.bloodrequest,name="bloodrequest"),
    path('blood-requested/', views.bloodrequested,name="bloodrequest"),
    path('blood-requested-history/', views.bloodrequestedhistory,name="bloodrequest"),
    path('blood-requested/accept/<int:id>', views.accept,name="accept"),
    path('blood-requested/reject/<int:id>', views.reject,name="reject"),
]