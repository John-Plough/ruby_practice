#model employee info
#print "John makes $200000 per year"

class Employee
  def initialize(first)
    @first = first
  end

  def say_name
    p @first
  end
end

employee1 = Employee.new("Frank")
employee2 = Employee.new("Jerry")
employee3 = Employee.new("Mitch")

employee1.say_name
pp employee2
pp employee3
