class Bus

  attr_reader :route, :destination
  attr_accessor :passengers

  def initialize (route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "brum brum"
  end

  def current_passenger_number
    return @passengers.length
  end

  def add_person_to_bus(person)
    @passengers << person
  end

  def remove_person_from_bus(departee)
    if @passengers.include?(departee)
      @passengers.delete(departee)
    end
  end

  def remove_all_passengers
    @passengers = []
  end 

end
