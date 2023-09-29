class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.decimal :amount, precision: 7, scale: 2
      t.integer :status
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
