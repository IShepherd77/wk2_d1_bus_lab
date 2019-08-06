require('minitest/rg')
require('minitest/autorun')
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("26", "Corstorphine", [])
    @passenger1 = Person.new("Ian", 41)
    @passenger2 = Person.new("Vic", 39)
    @passenger3 = Person.new("Dave", 50)
  end

  def test_can_create_bus()
    assert_equal(Bus, @bus.class())
  end

  def test_get_route_number
    assert_equal("26", @bus.route_number())
  end

  def test_get_destination
    assert_equal("Corstorphine", @bus.destination())
  end

  def test_bus_can_drive
    assert_equal("brum, brum", @bus.drive())
  end

  def test_get_passengers
    assert_equal([], @bus.passengers())
  end

  def test_get_number_of_passengers_on_bus
    assert_equal(0, @bus.number_of_passengers_on_bus())
  end

  def test_add_passenger()
    @bus.pick_up_passenger(@passenger1)
    assert_equal(1, @bus.number_of_passengers_on_bus())
  end

  def test_add_two_passengers()
    @bus.pick_up_passenger(@passenger1)
    @bus.pick_up_passenger(@passenger2)
    assert_equal(2, @bus.number_of_passengers_on_bus())
  end

  def test_drop_off_passenger()
    @bus.pick_up_passenger(@passenger1)
    @bus.pick_up_passenger(@passenger2)
    @bus.drop_off_passenger(@passenger1)
    assert_equal(1, @bus.number_of_passengers_on_bus())
  end

  def test_empty_bus()
    @bus.pick_up_passenger(@passenger1)
    @bus.pick_up_passenger(@passenger2)
    @bus.empty()
    assert_equal(0, @bus.number_of_passengers_on_bus)
  end

end
