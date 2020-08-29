lines = []
File.open("votes.txt") do |read_votes|
    lines = read_votes.readlines
end

votes = Hash.new(0) # creates a new hash with a default value of o

lines.each do |line|
    name = line.chomp
    name.upcase! # normalizes the names, changes them to be in ALL CAPS
    votes[name] += 1 # increment whatever value is returned
end

votes.each do |name, count|
    puts "#{name}: #{count}"
end