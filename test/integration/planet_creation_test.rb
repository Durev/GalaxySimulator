require 'test_helper'

class PlanetCreationTest < ActionDispatch::IntegrationTest

  test "invalid planet creation" do
    get planets_path
    assert_no_difference 'Planet.count' do
      post planets_path, params: { planet: { name: "",
                                             nature: "earthish" },
                                   star: { star_id: "2" } }
    end
    assert_template 'planets/index'
  end

  test "valid planet creation" do
    get planets_path
    assert_difference 'Planet.count', 1 do
      post planets_path, params: { planet: { name: "Mars",
                                             nature: "terrestrial" },
                                   star: { star_id: "2" } }
    end
    follow_redirect!
    assert_template 'planets/index'
  end
end
