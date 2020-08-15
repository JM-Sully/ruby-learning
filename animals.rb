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
    def make_up_name
        @name = "Cody"
    end
    def talk
        puts "#{@name} says Bark!"
    end
    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end
    def make_up_age
        @age = 5
    end
    def report_age
        puts "#{@name} is #{@age} years old."
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

bird = Bird.new
dog = Dog.new
cat = Cat.new

puts cat.make_up_name
puts cat.talk
puts cat.move("house")
puts cat.make_up_age
puts cat.report_age

