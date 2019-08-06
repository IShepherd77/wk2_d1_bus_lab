require('minitest/rg')
require('minitest/autorun')
require_relative("../bus")


class BusTest < MiniTest::Test

def setup
  @bus = Bus.new("22", "Holyrood", [])
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


end
