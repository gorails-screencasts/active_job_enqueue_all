require "test_helper"

class UnpaidOrders::NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get unpaid_orders_notifications_create_url
    assert_response :success
  end
end
