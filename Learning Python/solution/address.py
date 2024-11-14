marks = 89  # Assign 89 to the variable marks
result = marks  # Assign the value of marks to result (result now references the same integer object as marks)
score = 88  # Assign 88 to the variable score

print(marks)  # Print the value of marks (expected output: 89)
print(id(marks))  # Print the memory address (ID) of the object referenced by marks
print(id(result))  # Print the memory address (ID) of the object referenced by result (should be the same as marks)
print(id(score))  # Print the memory address (ID) of the object referenced by score (different from marks and result)
