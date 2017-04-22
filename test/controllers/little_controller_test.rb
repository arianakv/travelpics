require 'test_helper'

class LittleControllerTest < ActionDispatch::IntegrationTest
  test "should get Havana" do
    get little_Havana_url
    assert_response :success
  end

end
