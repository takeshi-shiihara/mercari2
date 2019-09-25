class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,          null: false
      t.integer :user_id,      null: false
      t.integer :price,        null: false
      t.text :description,     null: false
      t.string :condition,     null: false
      t.integer :category_id,  null: false
      t.integer :size_id
      t.integer :brand_id
      t.integer :buy_id
      t.integer :state_id
      t.timestamps
    end
  end
end
