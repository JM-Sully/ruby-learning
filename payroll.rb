class Employee

    attr_reader :name, :salary

    def name=(name)
        if name == ""
            raise "Name can't be blank."
        end
        @name=name
    end

    def print_name
        puts "Name: #{name}" 
    end

    def initialize(name = "Anonymous")
        self.name = name
    end

end

class SalariedEmployee < Employee

    attr_reader :salary

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid."
        end
        @salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}."
    end

end

class HourlyEmployee < Employee

    attr_reader :hourly_wage, :hours_per_week

    def initialize(name = "Anonymous", hourly_wage = 0, hours_per_week = 0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end

    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "An hourly wage of #{hourly_wage} isn't valid."
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "Hours of #{hours_per_week} aren't valid."
        end
        @hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}."
    end

end

salaried_employee = SalariedEmployee.new("Jane", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("Joe", 15, 30)
hourly_employee.print_pay_stub

angela = HourlyEmployee.security_guard("Angela Matthews")
edwin = HourlyEmployee.janitor("Edwin Miller")
ivan = HourlyEmployee.cashier("Ivan Bolski")

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub