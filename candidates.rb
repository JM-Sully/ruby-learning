class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    def initialize(name, age:, occupation:, hobby: "Fetching the ball", birthplace: nil )
        self.name = name
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end 
end

def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end

candidate = Candidate.new("Cody Bear", age: 8, occupation: "Herder", birthplace: "Kazabazua")
#candidate = Candidate.new("Brooke Crazy-Pants")
print_summary(candidate)