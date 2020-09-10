require 'minitest/autorun'
require 'person'

class TestPerson < MiniTest::Test
    def test_introduction
        person = Person.new
        person.name = "Ady"
        assert(person.introduction == 'Hello, my name is Ady!')
    end
end