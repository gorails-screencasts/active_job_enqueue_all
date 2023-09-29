class Customer < ApplicationRecord
  has_many :orders
  has_many :unpaid_order_notifications
end
