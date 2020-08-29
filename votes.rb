lines = []
File.open("votes.txt") do |read_votes|
    lines = read_votes.readlines
end

votes = {} #creates an empty hash

lines.each do |line|
    name = line.chomp
    if votes[name] #don't need to add '!= nil' If the vote name exists, add 1
        votes[name] += 1
    else #if the vote name doesn't exist, at the vote name as a key and assign it a value of one
        votes[name] = 1
    end
end

p votes