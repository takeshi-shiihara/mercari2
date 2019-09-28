class CreatePhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_numbers do |t|
      t.integer :phone_number,     null: false
      t.integer :user_id
      t.timestamps
    end
  end
end
