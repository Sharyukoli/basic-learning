class Account:
    def __init__(self, balance):
        self._balance = balance  # Initialize the protected attribute _balance with the initial balance provided

    def deposit(self, amount):
        self._balance += amount  # Add the specified amount to _balance, increasing the account balance

    def get_balance(self):  # Define a method to retrieve the current account balance
        return self._balance  # Return the current value of the protected attribute _balance

# Create an instance of the Account class with an initial balance of 100
account = Account(100)

# Call the deposit method to add 50 to the account balance
account.deposit(50)

# Print the current balance using the get_balance method
print(account.get_balance())  # Output: 150
