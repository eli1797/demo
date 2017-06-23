require 'test_helper'

class TryingControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get TryingView" do
    get trying_controller_TryingView_url
    assert_response :success
  end

end
