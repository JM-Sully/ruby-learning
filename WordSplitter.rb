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
splitter.string = "how do you do"

splitter.each do |word|
    puts word
end

p splitter.find_all { |word| word.include?("d") } #find all items that are true
p splitter.reject { |word| word.include?("d") } #reject all items that are true
p splitter.map { |word| word.reverse } #returns an array with the values

p splitter.any? { |word| word.include?("e") } #returns true if the block returns true for any item
p splitter.count #count all of the items
p splitter.first #the first item
p splitter.sort #an array with the items sorted (alphabetically)
