class AddBirthDayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_day, :integer
  end
end
