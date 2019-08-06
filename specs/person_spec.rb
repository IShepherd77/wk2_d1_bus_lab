require('minitest/rg')
require('minitest/autorun')
require_relative("../person")


class PersonTest < MiniTest::Test

def setup
  @person = Person.new("Fred", 40)
end

def test_get_person_name
  assert_equal("Fred", @person.name())
end

def test_get_person_age
  assert_equal(40, @person.age())
end



# def test_get_route_number
#   assert_equal("22", @bus.route_number())
# end
#
# def test_get_destination
#   assert_equal("Holyrood", @bus.destination())
# end
#
# def test_bus_can_drive
#   assert_equal("brum, brum", @bus.drive())
# end


end
