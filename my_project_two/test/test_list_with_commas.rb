require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test
    def two_word_list
        list = ListWithCommas.new
        list.items = ['Cody', 'Jess']
        assert(list.join == 'Cody and Jess')
    end
end