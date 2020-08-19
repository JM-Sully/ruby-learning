class Animal

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

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

class Dog < Animal

    def to_s
        "#{@name} the dog, age #{age}."
    end

end

class Bird < Animal

    def talk
        puts "#{@name} says tweet tweet!"
    end

    def move(destination)
        puts "#{@name} flies to the #{destination}."
    end

end

class Cat < Animal

    def talk
        puts "#{@name} say meow!"
    end

end

class Armadillo < Animal

    def move(destination)
        puts "#{@name} unrolls."
        super
    end

end
    
cody = Dog.new
cody.name = "Cody"
cody.age = 7

benji = Dog.new
benji.name = "Benji"
benji.age = 16

puts cody, benji