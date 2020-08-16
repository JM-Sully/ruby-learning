class Bird

    def make_up_name
        @name = "Tweetie"
    end

    def talk 
        puts "#{@name} says Chirp! Chirp!"
    end

    def move(destination)
        puts "#{@name} flies to #{destination}."
    end

    def make_up_age
        @age = 3
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end
    
end

class Dog 
    def name=(new_value)
        @name = new_value
    end

    def name
        @name
    end

    def age=(new_value)
        @age = new_value
    end

    def age
        @age
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

class Cat

    def make_up_name
        @name = "Martha"
    end

    def talk
        puts "#{@name} says Meow."
    end

    def move(destination)
        puts "#{@name} meanders to the #{destination}."
    end

    def make_up_age
        @age = 14
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

cody = Dog.new
cody.name = "Cody"
cody.age = 7
benji = Dog.new
benji.name = "Benji"
benji.age = 16

puts cody.report_age
puts benji.report_age


