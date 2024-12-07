#write a program to create a multiplication table for 1 to 5
start =1
end=5
for i in range(start ,end +1):
    print(f"mul{i}:")

for j in range(1,11):
    print(f"{i}*{j}={i*j}")