require('minitest/rg')
require('minitest/autorun')
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

def setup
  @bus = Bus.new("22", "Holyrood", [])
@person = Person.new("Fred", 40)
end

def test_get_route_number
  assert_equal("22", @bus.route_number())
end

def test_get_destination
  assert_equal("Holyrood", @bus.destination())
end

def test_bus_can_drive
  assert_equal("brum, brum", @bus.drive())
end

# def test_get_passengers
#   assert_equal([], @bus.passengers())
# end

def test_get_number_of_passengers_on_bus
  assert_equal(0, @bus.number_of_passengers_on_bus())
end

def test_pick_up_passenger()
  @bus.pick_up_passenger(@person)
  assert_equal("Fred", @bus.passengers[0].name)
end

def test_drop_off_passenger()
  @bus.pick_up_passenger(@person)
  assert_equal(0, @bus.number_of_passengers_on_bus)
end



end
