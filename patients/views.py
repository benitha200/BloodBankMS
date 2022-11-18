from django.shortcuts import render
from django.db import models

# Create your views here.
def patients(request):
    list =  models.Patients.objects.all()
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
    