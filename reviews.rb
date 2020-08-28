lines = []

#opens the file that has the reviews we want to work with
File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end

relevant_lines = []

#finds all the lines with the word "Truncated"
relevant_lines = lines.find_all { |line| line.include?("Truncated") }

#gets rid of all the bylines, they start with "--"
reviews = relevant_lines.reject { |line| line.include?("--")}

#the section of text we are now working with is called reviews

#identifies the index of the ajectives and stores it in "words"
def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words[index + 1]
end

#uses the find_adjective method and stores all the values in "adjectives"
adjectives = reviews.map do |review| 
    adjective = find_adjective(review)
    "'#{adjective.capitalize}!'"
end
puts adjectives