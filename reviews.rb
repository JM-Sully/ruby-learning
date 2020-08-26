review_file = File.open("reviews.txt")
lines = review_file.readlines
review_file.close

File.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end