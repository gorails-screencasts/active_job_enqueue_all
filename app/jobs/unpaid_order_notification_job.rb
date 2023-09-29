class UnpaidOrderNotificationJob < ApplicationJob
  queue_as :default

  def perform(order)
    UnpaidOrderNotification.create(order: order, customer: order.customer)
    OrderMailer.with(order: order).unpaid_order.deliver_later
  end
end
