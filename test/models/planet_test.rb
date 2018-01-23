require 'test_helper'

class PlanetTest < ActiveSupport::TestCase

  def setup
    @sun = stars(:sun)
    @planet = Planet.new(name: "Earth", nature: "terrestrial", star_id: @sun.id)
  end

  test "should be valid" do
    assert @planet.valid?
  end
end
