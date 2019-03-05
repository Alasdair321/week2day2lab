require("minitest/autorun")
require("minitest/rg")

require_relative("../bus_lab")
require_relative("../person")

class Bus_labTest < MiniTest::Test

  def setup
    @person1 = Person.new("Billy", 7)
    @person2 = Person.new("Diana", 66)
    @person3 = Person.new("Geroge", 33)
    @person4 = Person.new("Pavel", 25)

    @bus = Bus.new(22, "Ocean Terminal")
  end


  def test_bus_route
    assert_equal(22, @bus.route)
  end

  def test_bus_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("brum brum", @bus.drive)
  end

  def test_current_passenger_number
    array_length = @bus.current_passenger_number
    assert_equal(0, array_length)
  end

  def test_add_person_to_bus
    @bus.add_person_to_bus(@person1)
    assert_equal(1,@bus.current_passenger_number) #increased length of array
    assert_equal(true,@bus.passengers.include?(@person1)) #data given is accurate
  end

  def test_remove_person_from_bus
    @bus.add_person_to_bus(@person1)
    @bus.add_person_to_bus(@person2)
    prior_passenger_num = @bus.current_passenger_number
    @bus.remove_person_from_bus(@person1)
    assert_equal(1,@bus.current_passenger_number) #increased length of array
    assert_equal(false,@bus.passengers.include?(@person1)) #data given is accurate
  end

  def test_remove_all_passengers
    @bus.add_person_to_bus(@person1)
    @bus.add_person_to_bus(@person2)
    @bus.add_person_to_bus(@person3)
    @bus.add_person_to_bus(@person4)
    @bus.remove_all_passengers
    assert_equal(0, @bus.current_passenger_number)
  end

end
