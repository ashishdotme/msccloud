class Bank_Account:
    def __init__(self):
        self.balance=0
 
    def deposit(self, amount):
        self.balance += amount
        print("\n Amount Deposited:",amount)
 
    def withdraw(self, amount):
        if self.balance>=amount:
            self.balance-=amount
            print("\n You Withdrew:", amount)
        else:
            print("\n No balance")
 
    def display(self):
        print("\n Net Available Balance=",self.balance)
 

aib = Bank_Account()
aib.deposit(10)
aib.withdraw(5)
aib.display()