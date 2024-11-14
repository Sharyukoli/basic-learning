# Import the entire package
import mypackage

import sys
sys.path.append(r"C:\sharyu_tap\basic-learning\Learning Python\days\day6")

import mypackage
print(mypackage.add(5, 3))  # Assuming you've defined `add` in math_operations.py



# Use functions from the package
print(mypackage.add(5, 3))          # Output: 8
print(mypackage.uppercase("hello")) # Output: "HELLO"

# Alternatively, you can import specific functions
from mypackage import add, uppercase

print(add(2, 4))                    # Output: 6
print(uppercase("world"))           # Output: "WORLD"
