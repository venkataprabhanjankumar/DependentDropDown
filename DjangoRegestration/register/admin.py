from django.contrib import admin

from .models import Country,State,PersonDetails,District,City

admin.site.register(Country)
admin.site.register(State)
admin.site.register(PersonDetails)
admin.site.register(District)
admin.site.register(City)
