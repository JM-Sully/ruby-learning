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

    def print_pay_stub
        puts "Name : #{@name}" 
        pay_for_period = (@salary / 365) * 14
        puts "Pay This Period $#{pay_for_period}."
    end

    def print_pay_snub
        puts "Name : #{@name}" 
        pay_for_period = (@salary / 365) * 14
        puts "Pay This Period $#{pay_for_period}."
    end

end

amy = Employee.new
puts "\n"
amy.name = "Amy"
amy.salary = 1020293
amy.print_pay_stub
