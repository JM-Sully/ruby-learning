require 'minitest/autorun'
require 'list_with_commas'

class TestListWithCommas < Minitest::Test

    def test_it_prints_one_word_alone
        list = ListWithCommas.new
        list.items = ['Cody']
        assert_equal('Cody', list.join)
    end
    
    def test_it_joins_two_words_with_and
        list = ListWithCommas.new
        list.items = ['Cody', 'Jess']
        assert_equal('Cody and Jess', list.join)
    end

    def test_it_joins_three_words_with_commas
        list = ListWithCommas.new
        list.items = ['Cody', 'Ady', 'Jess']
        assert_equal('Cody, Ady, and Jess', list.join)
    end

end