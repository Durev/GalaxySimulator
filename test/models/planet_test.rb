require 'test_helper'

class PlanetTest < ActiveSupport::TestCase

  def setup
    @sun = stars(:sun)
    @planet = Planet.new(name: "Earth", nature: "terrestrial", star_id: @sun.id)
  end

  test "should be valid" do
    assert @planet.valid?
  end

  test "name should be present" do
    @planet.name = ""
    assert_not @planet.valid?
  end

  test "name should not be too long" do
    @planet.name = "a"*51
    assert_not @planet.valid?
  end

  test "name should be unique" do
    duplicate_planet = @planet.dup
    duplicate_planet.name = @planet.name.upcase
    @planet.save
    assert_not duplicate_planet.valid?
  end

  test "star id should be present" do
    @planet.star_id = nil
    assert_not @planet.valid?
  end

  test "nature should be present" do
    @planet.nature = "  "
    assert_not @planet.valid?
  end

  test "nature should be terrestrial or giant" do
    @planet.nature = "beautiful"
    assert_not @planet.valid?
  end
end


