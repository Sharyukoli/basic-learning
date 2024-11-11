# urls.py
from django.urls import path
from .views import ItemListCreate, ItemDetail

urlpatterns = [
    path('api/items/', ItemListCreate.as_view(), name='item-list-create'),
    path('api/items/<int:pk>/', ItemDetail.as_view(), name='item-detail'),
]
