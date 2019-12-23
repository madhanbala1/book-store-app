class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      
      # t.timestamps
    end
  end
end
