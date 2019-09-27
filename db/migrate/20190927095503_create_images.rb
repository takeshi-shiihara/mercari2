class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :item ,      null: false, foreign_key: true
      t.string :main_image,     null: false
      t.string :sub_image,      null: false


      t.timestamps
    end
  end
end
