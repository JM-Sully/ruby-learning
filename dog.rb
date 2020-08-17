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

    attr_reader :name, :age

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