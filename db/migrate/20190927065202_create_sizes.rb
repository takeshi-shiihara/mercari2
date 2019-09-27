class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :shoes_size
      t.string :clothes
      t.string :child_shoes_size
      t.string :child_clothes

      t.timestamps
    end
  end
end
