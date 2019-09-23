class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :post_number, null: false, default: ""
      t.string :prefecture, null: false, default: ""
      t.string :city, null: false, default: ""
      t.string :address
      t.string :building
      t.timestamps
    end
  end
end
