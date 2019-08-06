class Bus

attr_reader :route_number, :destination, :passengers

def initialize(route_number, destination, passengers)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def drive()
  return "brum, brum"
end

def number_of_passengers_on_bus()
  return @passengers.length
end

def pick_up_passenger(passenger)
@passengers << passenger
end

# def drop_off_passenger(passenger)
# @passengers.delete(passenger)
# end

def drop_off_passenger(person)
  index = @passengers.index(person)
  @passengers.slice!(index, 1)
end

def empty()
  @passengers.clear()
end


end
