class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items, id: false do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :item_id, null: false
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.decimal :list_price, null: false
      t.decimal :discount, precision: 15, scale: 2

      # t.timestamps
    end
  end
end
