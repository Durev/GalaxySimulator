require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "Galaxy"
  end

end
