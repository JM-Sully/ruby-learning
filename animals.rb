class Bird
    def talk    
        puts "Chirp! Chirp!"
    end
    def move(destination)
        puts "Flying to #{destination}."
    end
end

class Dog
    def talk
        puts "Bark!"
    end
    def move(destination)
        puts "Running to the #{destination}."
    end
end

class Cat
    def talk
        puts "Meow."
    end
    def move(destination)
        puts "Meanders to the #{destination}."
    end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
cat.move("window")

