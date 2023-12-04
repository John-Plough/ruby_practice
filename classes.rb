# class Employee
#   attr_accessor :first, :last, :phone, :email

#   def initialize(first, last, phone, email)
#     @first = first
#     @last = last
#     @phone = phone
#     @email = email
#   end

#   def say_name
#     "#{@first} #{@last}"
#   end
# end

# employee1 = Employee.new("Frank", "Johnson", 555_555_5555, "fjohnson@email.com")
# employee2 = Employee.new("Jerry", "Oblonsky", 231_555_5555, "joblonsky@email.com")
# employee3 = Employee.new("Mitch", "Richmond", 310_555_5555, "bigmitch@email.com")

# pp employee1
# pp employee2
# pp employee3
# p employee1.phone
# p employee2.say_name
# p employee3.email

class Employee
  attr_accessor :first, :last, :phone, :email

  def initialize(options)
    @first = options[:first]
    @last = options[:last]
    @phone = options[:phone]
    @email = options[:email]
  end

  def print_employee
    p "#{first} #{last} has the following email address: #{email}"
  end
end

employee1 = Employee.new(first: "Frank", last: "Johnson", phone: 555_555_5555, email: "fjohnson@email.com")
employee2 = Employee.new(first: "Jerry", last: "Oblonsky", phone: 231_555_5555, email: "joblonsky@email.com")
employee3 = Employee.new(first: "Mitch", last: "Richmond", phone: 310_555_5555, email: "bigmitch@email.com")

# employee1.print_employee
# employee2.print_employee
# employee3.print_employee

class Manager < Employee
  def initialize(options)
    super
    @dept = options[:dept]
  end

  def tps
    p "TPS report, please."
  end
end

manager1 = Manager.new(
  first: "Harry",
  last: "Gladstone",
  phone: 455_555_5555,
  email: "harry@email.com",
  dept: "communications",
)

# p manager1
manager1.print_employee
manager1.tps
