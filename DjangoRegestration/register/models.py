from django.db import models

class Country(models.Model):

    countryName = models.CharField(max_length=40)

    def __str__(self):
        return self.countryName

class State(models.Model):

    country = models.ForeignKey(Country,on_delete=models.CASCADE)
    stateName = models.CharField(max_length=40)

    def __str__(self):
        return self.stateName
class District(models.Model):

    districtName = models.CharField(max_length=40)
    district = models.ForeignKey(State,on_delete=models.CASCADE)

    def __str__(self):
        return self.districtName
class City(models.Model):

    cityName = models.CharField(max_length=40)
    city = models.ForeignKey(District,on_delete=models.CASCADE)

    def __str__(self):
        return self.cityName

class PersonDetails(models.Model):

    name = models.CharField(max_length=100)
    dateOfBirth = models.DateField(null=True,blank=True)
    country = models.CharField(max_length=40)
    state = models.CharField(max_length=40)
    district = models.CharField(max_length=40)
    city = models.CharField(max_length=40)

    def __str__(self):
        return self.name