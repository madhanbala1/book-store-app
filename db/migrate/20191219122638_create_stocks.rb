class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks, id: false do |t|
      t.references :store, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      # t.timestamps
    end
  end
end
