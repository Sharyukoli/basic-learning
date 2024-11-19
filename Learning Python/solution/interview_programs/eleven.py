#Question : Write a Python program to print "Hello, World!".
# Explanation
print("Hello, World!")

#Question : Calculate the sum of two numbers entered by the user.
# Explanation
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
sum_result = num1 + num2
print("Sum:", sum_result)

#Question : Write a Python program to check if a given number is even or odd.
# Explanation
num = int(input("Enter a number: "))
if num % 2 == 0:
  print("Even")
else:
  print("Odd")

  #Question : Calculate the factorial of a given number.
# Explanation
def factorial(n):
  if n == 0 or n == 1:
    return 1
  else:
    return n * factorial(n - 1)

num = int(input("Enter a number: "))
print("Factorial:", factorial(num))

#Question : Find the largest among three numbers entered by the user.
# Explanation
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
num3 = float(input("Enter the third number: "))

largest = max(num1, num2, num3)
print("Largest number:", largest)

#Question : Write a Python program to print all even numbers from 1 to 20.
# Explanation
for i in range(2, 21, 2):
  print(i)

  #Question : Calculate the sum of all numbers from 1 to a given number.

# Explanation
num = int(input("Enter a number: "))
sum_result = sum(range(1, num + 1))
print("Sum:", sum_result)

#Question : Write a Python program to check if a given string is a palindrome.
# Explanation
def is_palindrome(s):
  return s == s[::-1]

string = input("Enter a string: ")
if is_palindrome(string):
  print("Palindrome")
else:
  print("Not a palindrome")

  #Question : Count the number of vowels in a given string.
  # Explanation
def count_vowels(s):
  vowels = "aeiouAEIOU"
  return sum(1 for char in s if char in vowels)

string = input("Enter a string: ")
print("Number of vowels:", count_vowels(string))
#Question : Reverse a given list in-place.
# Explanation
lst = [1, 2, 3, 4, 5]
lst.reverse()
print(lst)
Question : Remove duplicates from a list.
# Explanation
lst = [1, 2, 2, 3, 4, 4, 5]
unique_lst = list(set(lst))
print(unique_lst)
Question : Check if a given number is prime.
# Explanation
def is_prime(num):
  if num <= 1:
    return False

  for i in range(2, int(num**0.5) + 1):
    if num % i == 0:
      return False
  return True

num = int(input("Enter a number: "))
if is_prime(num):
  print("Prime")
else:
  print("Not prime")
  Question : Convert a string to uppercase.
  # Explanation
string = "hello world"
upper_string = string.upper()
print(upper_string)
Question : Calculate the area of a circle with a given radius.
# Explanation
import math
radius = float(input("Enter the radius of the circle: "))
area = math.pi * radius**2
print("Area of the circle:", area)
Question : Replace all occurrences of a character in a string.
# Explanation
string = "hello world"
new_string = string.replace('l', 'L')
print(new_string)
