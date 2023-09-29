class UnpaidOrdersController < ApplicationController
  def index
    @unpaid_orders = Order.unpaid.order(amount: :desc).includes(:customer)
  end
end
