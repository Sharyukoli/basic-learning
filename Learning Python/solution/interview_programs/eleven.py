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

  
