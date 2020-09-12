require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test

    def test_it_prints_one_word_alone
        list = ListWithCommas.new
        list.items = ['Cody']
        assert('Cody' == list.join, "Return value didn't equal 'Cody'")
    end
    
    def test_it_joins_two_words_with_and
        list = ListWithCommas.new
        list.items = ['Cody', 'Jess']
        assert('Cody and Jess' == list.join)
    end

    def test_it_joins_three_words_with_commas
        list = ListWithCommas.new
        list.items = ['Cody', 'Ady', 'Jess']
        assert('Cody, Ady, and Jess' == list.join)
    end

end