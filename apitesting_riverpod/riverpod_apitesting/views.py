from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view
from .models import TestData
from .serializer import TestDataSerializer

@api_view((['GET']))
def getData(request):
    data = TestData.objects.filter()
    serializer = TestDataSerializer(data, many=True)
    return Response(serializer.data)

@api_view((['POST']))
def postData(request):
    print(request.data)
    serializer = TestDataSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        data = TestData.objects.filter()
        serializer = TestDataSerializer(data,many = True)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

