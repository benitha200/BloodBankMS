# Generated by Django 4.0.6 on 2022-11-17 12:05

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Patients',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('patient_id', models.CharField(default='P-00', max_length=10)),
                ('first_name', models.CharField(max_length=50)),
                ('last_name', models.CharField(max_length=50)),
                ('age', models.IntegerField()),
                ('body_weight', models.IntegerField()),
                ('phone_number', models.CharField(max_length=50)),
                ('blood_type', models.CharField(max_length=5)),
                ('blood_quantity', models.IntegerField()),
                ('hospital', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'patients',
            },
        ),
    ]