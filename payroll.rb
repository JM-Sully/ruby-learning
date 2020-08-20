class Employee

    attr_reader :name, :salary

    def name=(name)
        if name == ""
            raise "Name can't be blank." #Use raise instead of puts so it reports an error
        end
        @name=name
    end

    def salary=(salary)
        if salary < 0
            raise "A salary of #{@salary} isn't valid."
        end
        @salary = salary
    end

    def initialize(name = "Anonymous", salary = 0.0)
        @name = name
        @salary = salary
    end

    def print_pay_stub
        puts "Name: #{@name}" 
        pay_for_period = (@salary / 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period $#{formatted_pay}."
    end

end

=begin
amy = Employee.new
amy.name = "Amy"
amy.salary = 50000
amy.print_pay_stub
=end

employee = Employee.new("Amy", 50000).print_pay_stub
employee = Employee.new("Amy").print_pay_stub
employee = Employee.new.print_pay_stub
