def my_method(&my_block)
    puts "We're in the method, about to invoke your block!"
    my_block.call
    puts "We're back in the method!"
end

my_method do
    puts "We're in the block."
end

puts my_method(my_block)

def give(&my_block)
    my_block.call("2 bananas", "1 apple")
end

give do |present1, present2|
    puts "My method gave me..."
    puts present1, present2
end

puts give(&my_block)