class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.references :item,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
