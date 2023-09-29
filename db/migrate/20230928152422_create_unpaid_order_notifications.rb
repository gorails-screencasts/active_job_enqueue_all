class CreateUnpaidOrderNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :unpaid_order_notifications do |t|
      t.references :order, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
