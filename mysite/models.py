from django.db import models
from django.contrib.auth.models import User
import datetime
# from django.contrib.auth.models import User
# class collectors(models.Model):


class Donors(models.Model):

    donor_id = models.CharField(max_length = 10,default="D00000")
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    age = models.IntegerField()
    body_weight = models.IntegerField()
    phone_number = models.CharField(max_length=50) 
    blood_type = models.CharField(max_length =5)
    blood_quantity = models.IntegerField()
    created_by=models.ForeignKey(User,on_delete=models.CASCADE,null=True) 

    class Meta:
        db_table = "donors"


class Patients(models.Model):

    patient_id= models.CharField(max_length=10, default= "P-00")
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    age = models.IntegerField()
    body_weight = models.IntegerField()
    phone_number = models.CharField(max_length=50) 
    blood_type = models.CharField(max_length =5)
    blood_quantity = models.IntegerField()
    hospital=models.CharField(max_length= 100)

    class Meta:
        db_table = "patients"


class HospitalStock(models.Model):

    blood_type = models.CharField(max_length =5)
    blood_quantity = models.IntegerField()
    hospital=models.ForeignKey(User,on_delete=models.CASCADE) 

    class Meta:
        db_table = "hospital_stock"


class RbcStock(models.Model):
    blood_type = models.CharField(max_length =5)
    blood_quantity = models.IntegerField()

    class Meta:
        db_table = "rbc_stock"


class HospitalRequests(models.Model):
    blood_type = models.CharField(max_length =5)
    blood_quantity = models.IntegerField()
    hospital=models.ForeignKey(User,on_delete=models.CASCADE)
    status = models.IntegerField(default = 0) 

    class Meta:
        db_table = "hospital_requests"


class BloodDistribution(models.Model):
    blood_units = models.IntegerField()
    hospital_id = models.IntegerField()
    request_id = models.IntegerField()
    blood_type = models.CharField(max_length=10)
    drone_number = models.CharField(max_length= 10)
    departure_date = models.CharField(max_length= 10, default = datetime.date.today())
    departure_time = models.CharField(max_length= 10)
    expected_time = models.CharField(max_length = 10)
    status = models.IntegerField()

    class Meta:
        db_table = "blood_distribution"




        
    




