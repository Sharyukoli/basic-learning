from django.shortcuts import render

# Create your views here.
# myapp/views.py

from django.shortcuts import render, redirect, get_object_or_404
from .models import Book
from .forms import BookForm

# Create
def create_book(request):
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('book_list')
    else:
        form = BookForm()
    return render(request, 'mywebapp/book_form.html', {'form': form})

# Read
def book_list(request):
    books = Book.objects.all()
    return render(request, 'mywebapp/book_list.html', {'books': books})

# Update
def update_book(request, pk):
    book = get_object_or_404(Book, pk=pk)
    if request.method == 'POST':
        form = BookForm(request.POST, instance=book)
        if form.is_valid():
            form.save()
            return redirect('book_list')
    else:
        form = BookForm(instance=book)
    return render(request, 'mywebapp/book_form.html', {'form': form})

# Delete
def delete_book(request, pk):
    book = get_object_or_404(Book, pk=pk)
    if request.method == 'POST':
        book.delete()
        return redirect('book_list')
    return render(request, 'mywebapp/book_confirm_delete.html', {'book': book})
