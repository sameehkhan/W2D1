class Employee
  attr_reader :name :boss
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end


  def bonus(multiplier)
    @salary * multiplier
  end

end

class Manager < Employee
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def add_subordinate(employee)
    self.employees.push(employee)
  end


  def bonus(multiplier)
    total = 0
    @employees.each do |emp|
      if emp.is_a?(Manager)
        total += emp.bonus(1) + emp.salary
      else
        total += emp.salary
      end
    end
    total * multiplier
  end

end


ned = Manager.new("Ned", "Founder",1_000_000, nil)
darren = Manager.new("Darren", "TA Manager",78_000, ned)
shawna = Employee.new("Shawna", "TA",12_000, darren)
david = Employee.new("David", "TA",10_000, darren)
