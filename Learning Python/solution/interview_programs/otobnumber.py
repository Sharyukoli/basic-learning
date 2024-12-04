#write a python program to convert octal number to binary number 
#(using builtin function)
 #step 1 octal to decimal
#step 2 decimal to binary


a="52"
b=int (a,8)

c=bin(b)
print(f"the binary representation of {a} is {c}")