class AddBirthMonthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_month, :integer
  end
end
