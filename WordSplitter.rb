class WordSplitter

    include Enumerable

    attr_accessor :string

    def each
        string.split(" ").each do |word|
            yield word
        end
    end

end

splitter = WordSplitter.new
splitter.string = "salad beefcake corn beef pasta beefy"

p splitter.find_all { |word| word.include?("beef") } #find all items that are true
p splitter.reject { |word| word.include?("beef") } #reject all items that are true
p splitter.map { |word| word.capitalize } #returns an array with the values
p splitter.any? { |word| word.include?("e") } #returns true if the block returns true for any item
p splitter.count #count all of the items
p splitter.first #the first item
p splitter.sort #an array with the items sorted (alphabetically)
p splitter.find{ |word| word.include?("beef") } #finds the FIRST word that includes beef
p splitter.max_by { |word| word.length } #finds the longest word
p splitter.to_a #gets an array with all the words
p splitter.group_by { |word| word.include?("beef") } #splits the words into two arrays, one that includes beef and another that doesn't