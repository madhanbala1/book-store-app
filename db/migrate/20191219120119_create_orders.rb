class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.integer :order_status, null: false
      t.date :order_date, null: false
      t.date :required_date
      t.date :shipped_date
      t.references :store, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true

      # t.timestamps
    end
  end
end
