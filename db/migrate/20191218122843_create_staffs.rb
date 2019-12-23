class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
   	  t.string :first_name, null: false
   	  t.string :last_name
   	  t.string :email, null: false
   	  t.string :phone, null: false
   	  t.integer :active, null: false
   	  t.references :store, null: false
      t.references :manager

      # t.timestamps
    end
  end
end
