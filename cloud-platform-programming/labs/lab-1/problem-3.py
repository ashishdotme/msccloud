class Employee:
  def __init__(self, name):
    self.name = name
  
  def getName(self):
    return self.name

class CommissionEmployee(Employee):
  def __init__(self, name, grossSales, comissionRate):
    super().__init__(name)
    self.grossSales = grossSales
    self.comissionRate = comissionRate
  
  def getSalary(self):
    return self.comissionRate * self.grossSales

class BasePlusCommissionEmployee(CommissionEmployee):
  def __init__(self, name, grossSales, comissionRate, baseSalary):
    super().__init__(name, grossSales, comissionRate)
    self.baseSalary = baseSalary
  
  def getSalary(self):
    return self.baseSalary + super().getSalary()
  
def main():
    employees = []
    employees.append(CommissionEmployee("Ashish", 100, 0.6))
    employees.append(BasePlusCommissionEmployee("Ansu", 100, 0.6, 1000))
    for employee in employees:
        print("Name: {name} \nSalary: {salary}".format(name=employee.getName(), salary=employee.getSalary()))
main()