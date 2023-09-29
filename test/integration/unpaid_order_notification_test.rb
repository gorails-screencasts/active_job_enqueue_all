require "test_helper"

class UnpaidOrderNotificationTest < ActionDispatch::IntegrationTest
  test "notifying all customers with unpaid orders" do
    get unpaid_orders_url
    assert_response :success
    assert_select "h1", "Unpaid Orders"
    assert_select "form[action=?]", unpaid_orders_notifications_path, text: "Notify Customers of Unpaid Orders"

    assert_enqueued_jobs 5 do
      post unpaid_orders_notifications_path
    end

    assert_redirected_to unpaid_orders_url
  end
end
