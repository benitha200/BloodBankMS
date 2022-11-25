from django.contrib import messages
from django.contrib.auth import authenticate
from django.contrib.auth import login as loginFrom
from django.contrib.auth.models import Group, User
from django.db import models
from django.db.models import Q
from django.shortcuts import HttpResponseRedirect, redirect, render

from . import models


def indexall(request):
    return render(request, 'site/base.html')

def login(request):
    if(request.method=='POST'):
        username=request.POST.get('username')
        password=request.POST.get('password')
        print(username+" "+password)
        user = authenticate(username=username,password=password)
        # print(user.is_active)
        if user is not None:
                loginFrom(request,user)
                return redirect('dashboard')
        else:
            messages.error(request,'username or password not correct')
            return redirect('login')
    return render(request, 'site/login.html')

def hospitallogin(request):
    if(request.method=='POST'):
        username=request.POST.get('username')
        password=request.POST.get('password')
        print(username+" "+password)
        user = authenticate(username=username,password=password)
        # print(user.is_active)
        if user is not None:
                loginFrom(request,user)
                return redirect('dashboard')
        else:
            messages.error(request,'username or password not correct')
            return redirect('login')
    return render(request, 'site/hospital-login.html')

    

def signup(request):
     if(request.method=='POST'): 
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        username=request.POST.get('username')
        email=request.POST.get('email')
        password=request.POST.get('password')
        cpassword=request.POST.get('cpassword')
        if(password!=cpassword):
            messages.error(request,'password not match')
            return redirect('signup')
        else:

            #  if User.objects.filter(Q(username=username)).exists:
            #     messages.error(request,'User with this username already exist')
            #     return redirect('signup')  
             group = Group.objects.filter(Q(name="hospital"))
             if(group.exists):
                group = Group.objects.get(name="hospital")
                users = User.objects.create_user(
                                        first_name=first_name,last_name=last_name,email=email, password=password, username=username)
                users.save()
                users.groups.add(group)

                messages.error(request,'account created')
                return redirect('login')
             else:
                messages.error(request,'something went wrong')
                return redirect('signup')   
     return render(request, 'site/signup.html')

def dashboard(request):

    bloodA1 = models.RbcStock.objects.get(blood_type="A+")
    bloodA0 = models.RbcStock.objects.get(blood_type="A-")
    bloodAB1 = models.RbcStock.objects.get(blood_type="AB+")
    bloodAB0 = models.RbcStock.objects.get(blood_type="AB-")
    bloodB1 = models.RbcStock.objects.get(blood_type="B+")
    bloodB0 = models.RbcStock.objects.get(blood_type="B-")
    bloodO1 = models.RbcStock.objects.get(blood_type="O+")
    bloodO0 = models.RbcStock.objects.get(blood_type="O-")

    donors = models.Donors.objects.count()
    # hospitals = User.objects.filter(group__name = 'Hospital').count()
    group = Group.objects.get(name= 'Collector')
    hospitals =group.user_set.count()
    totalblood= bloodA1.blood_quantity + bloodA0.blood_quantity +bloodB1.blood_quantity+bloodB0.blood_quantity+bloodAB1.blood_quantity+bloodAB0.blood_quantity+bloodO1.blood_quantity+bloodO0.blood_quantity

    bloodrequest = models.HospitalRequests.objects.count()
    approvedrequest = models.HospitalRequests.objects.filter(status =1).count()

    context = { 'bloodA1':bloodA1,
                'bloodA0':bloodA0,
                'bloodAB1':bloodAB1,
                'bloodAB0':bloodAB0,
                'bloodB1':bloodB1,
                'bloodB0':bloodB0,
                'bloodO1':bloodO1,
                'bloodO0':bloodO0,
                'totaldonors':donors,
                'hospitals':hospitals, 
                'totalblood':totalblood,
                'bloodrequest':bloodrequest,
                'approvedrequest':approvedrequest,
                
                }
    return render(request,'site/dashboard/dashboard.html',context)

def collectors(request):

    # group = Group.objects.get(name='Collector')
    # list = group.user_set.all()
    # list= User.objects.filter(group__name ='Collector')
    # context= {'list':list}
    return render(request,'site/dashboard/collectors.html',context)

def collector(request):
    group = Group.objects.get(name= 'Collector')
    collectors =group.user_set.all()
    context= {'collectors':collectors} 
    return render(request,'site/dashboard/collector.html',context)

def hospitals(request):
    group = Group.objects.get(name= 'Hospital')
    hospital =group.user_set.all()
    context= {'hospital':hospital} 
    return render(request,'site/dashboard/hospital.html',context)


def registercollectors(request):
     if(request.method=='POST'):
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        username=request.POST.get('username')
        email=request.POST.get('email')
        password=request.POST.get('password')
        cpassword=request.POST.get('cpassword')
        if(password!=cpassword):
            messages.error(request,'password not match')
            return redirect('register-collector')
        else:

            #  if User.objects.filter(Q(username=username)).exists:
            #     messages.error(request,'User with this username already exist')
            #     return redirect('signup')  
             group = Group.objects.filter(Q(name="collector"))
             if(group.exists):
                group = Group.objects.get(name="collector")
                users = User.objects.create_user(
                                        first_name=first_name,last_name=last_name,email=email, password=password, username=username)
                users.save()
                users.groups.add(group)

                messages.error(request,'account created')
                return redirect('/collectors')
             else:
                messages.error(request,'something went wrong')
                return redirect('register-collector')   
     return render(request, 'site/forms/register-collectors.html')


def donors(request):
    list = models.Donors.objects.all()
    context= {'list':list}
    return render(request,'site/dashboard/donors.html',context)


def registerdonors(request):
     
    if(request.method=='POST'):
        first_name=request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        phone_number = request.POST.get('phone_number')
        age= request.POST.get('age')
        body_weight = request.POST.get('body_weight')
        phone_number=request.POST.get('phone_number')
        blood_type=request.POST.get('blood_type')
        blood_quantity=request.POST.get('blood_quantity')

        count_records = models.Donors.objects.count()

        if(count_records > 0):
            don = models.Donors.objects.all().order_by('-id')[0]
            do = don.id + 1
            # do= int(do) + 1
            donor_id = "D-0" + str(do)
        else:
            donor_id = "D-00"

        donors= models.Donors(
            donor_id = donor_id,
            first_name= first_name,
            last_name= last_name,
            age = age,
            body_weight= body_weight,
            phone_number= phone_number,
            blood_type= blood_type,
            blood_quantity= blood_quantity,
            # created_by = request.user.id

        )

        # update rbc stock
        d= models.RbcStock.objects.get(blood_type=blood_type)
        d.blood_quantity = d.blood_quantity + int(blood_quantity)
        d.save()

        donors.save()

       

        messages.error(request,'donor added suscessfully')
        return redirect('/donors')
    else:
        return render(request, 'site/forms/register-donors.html')
    

def collectors(request):
    list = models.User.objects.all()
    context= {'list':list}
    return render(request,'site/dashboard/collectors.html',context)


def patients(request):
    list = models.Patients.objects.filter(hospital = request.user.username)
    context= {'list':list}
    return render(request,'site/dashboard/patients.html',context)


def registerpatients(request):
    if(request.method=='POST'):
        first_name=request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        phone_number = request.POST.get('phone_number')
        age= request.POST.get('age')
        body_weight = request.POST.get('body_weight')
        phone_number=request.POST.get('phone_number')
        blood_type=request.POST.get('blood_type')
        blood_quantity=request.POST.get('blood_quantity')

        count_records = models.Patients.objects.count()

        if(count_records > 0):
            pat = models.Patients.objects.all().order_by('-id')[0]
            pa = pat.id + 1
            # do= int(do) + 1
            patient_id = "P-0" + str(pa)
        else:
            patient_id = "P-01"

        patients= models.Patients(
            patient_id = patient_id,
            first_name= first_name,
            last_name= last_name,
            age = age,
            body_weight= body_weight,
            phone_number= phone_number,
            blood_type= blood_type,
            blood_quantity= blood_quantity,
            hospital= request.user.username
            # created_by = request.user.id

        )
        patients.save()
        messages.error(request,'patient added successfully')
        return redirect('/patients')
    else:
        return render(request, 'site/forms/register-patients.html')
    
 
def rbcstock(request):
    stock = models.RbcStock.objects.all()
    context = {'stock':stock}
    return render(request,'site/dashboard/rbc_stock.html',context)
    
# def registercollectors(request):
#     return render(request,'site/forms/register-collectors.html')

def bloodrequest(request):

    requests = models.HospitalRequests.objects.filter(hospital_id = request.user.id)
    context = {'requests':requests}
    return render(request,'site/dashboard/blood-request.html',context)

def bloodrequested(request):

    requests = models.HospitalRequests.objects.filter(status=0)
    context = {'requests':requests}
    return render(request,'site/dashboard/blood-requested.html',context)

def bloodrequestedhistory(request):

    requests = models.HospitalRequests.objects.filter(~Q(status=0))
    context = {'requests':requests}
    return render(request,'site/dashboard/blood-requested-history.html',context)

# def hospitalrequest(request):
#     return render(request,'site/forms/hospital-request-form.html')

def hospitalrequest(request):
    if(request.method=='POST'):
       
        blood_type=request.POST.get('blood_type')
        blood_quantity=request.POST.get('blood_quantity')
    
        hospital = request.user.id


        hrequest= models.HospitalRequests(
            hospital_id = hospital,
            blood_type= blood_type,
            blood_quantity= blood_quantity,
            # created_by = request.user.id

        )
        hrequest.save()
        messages.error(request,'request made successfully')
        return redirect('/blood-request')
    else:
        return render(request, 'site/forms/hospital-request-form.html')

def accept(request,id,hospital):
    requested =models.HospitalRequests.objects.get(id = id)
    requested.status = 1
    stock = models.RbcStock.objects.get(blood_type= requested.blood_type)
    # if (stock.blood_quantity - requested.blood_quantity):
        # messages.error(request,'Insufficient stock')
        # print("<script>alert('Insufficient ')</script>")
    # else:
    stock.blood_quantity = stock.blood_quantity - requested.blood_quantity
    stock.save()
    
    hstock = models.HospitalStock.objects.filter(blood_type= requested.blood_type,hospital_id = hospital)
    if not hstock:
        hstockcreate = models.HospitalStock(
            blood_type = requested.blood_type,
            blood_quantity = requested.blood_quantity,
            hospital_id = hospital,
            
        )
        hstockcreate.save()
    else:
        hstock = models.HospitalStock.objects.get(blood_type= requested.blood_type,hospital_id = hospital)
        hstock.blood_quantity= hstock.blood_quantity + requested.blood_quantity
        hstock.save()

    requested.save()
    return redirect('/blood-requested')

def reject(request,id,hospital):
    requested = models.HospitalRequests.objects.get(id= id)
    requested.status = 2
    requested.save()
    return redirect('/blood-requested')


def hostock(request):
    hstock = models.HospitalStock.objects.filter(hospital_id = request.user.id)
    context = {'hstock': hstock}
    return render(request,'site/dashboard/hospital-stock.html',context)

def hospitalarchive(request):
    requests = models.HospitalRequests.objects.filter(hospital_id = request.user.id)
    context = {'requests':requests}
    return render(request,'site/dashboard/hospital-archive.html',context)

    
