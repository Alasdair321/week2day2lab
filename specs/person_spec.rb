require("minitest/autorun")
require("minitest/rg")

require_relative("../person")

class PersonTest < MiniTest::Test

  def test_has_name
    person = Person.new("Barry", 92)
    assert_equal("Barry", person.name)
  end

  def test_age
    person = Person.new("Barry", 92)
    assert_equal(92, person.age)
  end

end
