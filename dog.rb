class Dog 

    attr_reader :name, :agecody

    def name=(value)
        if value == ""
            raise "You need to enter a name."
        end
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't a valid age."
        end
        @age = value
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

end
