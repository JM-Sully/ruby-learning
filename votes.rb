lines = []
File.open("votes.txt") do |read_votes|
    lines = read_votes.readlines
end

p lines