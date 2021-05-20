from django.urls import path
from . import views
urlpatterns = [
    path('',views.hello_world),
    path('getdetails',views.register),
    path('getstatedetails',views.destrictdetails),
    path('getdestrictdetails',views.citydetails),
    path('welcome',views.welcome),
    path('display',views.display),
]