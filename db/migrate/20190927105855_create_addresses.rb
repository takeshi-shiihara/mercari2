class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :post_number,     null: false
      t.string :prefecture,     null: false
      t.string :city,     null: false
      t.string :address,     null: false
      t.string :building,     null: false
      t.integer :phone_number,     null: false
      t.integer :user_id
      t.timestamps
    end
  end
end