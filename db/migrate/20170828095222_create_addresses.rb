class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :user_id
      t.string :address_type
      t.timestamps null: false
    end
  end
end
