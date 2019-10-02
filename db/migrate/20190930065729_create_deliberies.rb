class CreateDeliberies < ActiveRecord::Migration[5.2]
  def change
    create_table :deliberies do |t|
      t.string :prefecture,        null: false
      t.string :delibery_date,     null: false 
      t.string :delibery_burden,   null: false
      t.string :delibery_way,      null: false
      t.references :item,          null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
