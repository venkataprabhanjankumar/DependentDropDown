from django.shortcuts import render
from .models import Country, State, PersonDetails, District, City
from django.http import HttpResponse
import json


def hello_world(request):
    details = Country.objects.all()
    return render(request, 'register.html', {'details': details})


def register(request):
    sname = request.GET['countrydata']
    results = []
    cities = []
    answer = str(sname)
    selected_country = Country.objects.get(countryName=answer)
    cities = selected_country.state_set.all()
    for city in cities:
        results.append({'name': city.stateName})
    return HttpResponse(json.dumps(results), content_type='application/json')


def destrictdetails(request):
    dname = request.GET['statedata']
    results = []
    districts = []
    answer = str(dname)
    selected_state = State.objects.get(stateName=answer)
    districts = selected_state.district_set.all()
    for district in districts:
        results.append({'name': district.districtName})
    return HttpResponse(json.dumps(results), content_type='application/json')


def citydetails(request):
    cname = request.GET['districtdata']
    results = []
    cities = []
    selected_district = District.objects.get(districtName=cname)
    cities = selected_district.city_set.all()
    for city in cities:
        results.append({'name': city.cityName})
    return HttpResponse(json.dumps(results), content_type='application/json')


def welcome(request):
    if request.method == 'POST':
        name = request.POST['name']
        dob = request.POST['dob']
        country = request.POST['country']
        state = request.POST['state']
        district = request.POST['district']
        city = request.POST['city']
        if country == 'Choose Country':
            return render(request,'register.html',{'err_msg':'Please Choose Country In Give List'})
        if state == 'Choose State':
            return render(request, 'register.html',{'err_msg':'Please Choose State In Give List'})
        if district == 'Choose District':
            return render(request, 'register.html',{'err_msg':'Please Choose District In Give List'})
        if city == 'Choose City':
            return render(request, 'register.html',{'err_msg':'Please Choose City In Give List'})
        record = PersonDetails(name=name, dateOfBirth=dob, country=country, state=state, district=district, city=city)
        record.save()
        return render(request, 'welcome.html',
                      {'name': name, 'dob': dob, 'country': country, 'state': state, 'district': district,
                       'city': city})


def display(request):
    details = PersonDetails.objects.all()
    return render(request,'display.html',{'details':details})
