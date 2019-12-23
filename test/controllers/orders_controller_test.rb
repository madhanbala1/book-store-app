require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get orders_controller_url
    assert_response :success
  end

end
