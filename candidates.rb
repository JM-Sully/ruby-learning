class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    def initialize(name, age ,occupation, hobby, birthplace)
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

candidate_cody = Candidate.new("Cody Bear", 8, "Herder", nil, "Kazabazua")
print_summary(candidate_cody)