class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name, null: false
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.integer :model_year
      t.decimal :list_price, null: false

      # t.timestamps
    end
  end
end
