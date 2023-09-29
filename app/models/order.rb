class Order < ApplicationRecord
  belongs_to :customer
  has_many :unpaid_order_notifications

  enum :status, [:unpaid, :paid]
end
