class RenameTelephoneColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :telephone, :phone_number
  end
end
