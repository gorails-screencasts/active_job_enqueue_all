require "test_helper"

class UnpaidOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unpaid_orders_index_url
    assert_response :success
  end
end
