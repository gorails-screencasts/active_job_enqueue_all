class OrderMailer < ApplicationMailer
  default from: "bigbox@store.com"

  def unpaid_order
    @order = params[:order]
    mail to: @order.customer.email, subject: "Your Unpaid Order"
  end
end
