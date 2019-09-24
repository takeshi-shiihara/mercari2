class RemoveBirthYearFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :birth_year, :integer
    remove_column :users, :birth_month, :integer
    remove_column :users, :birth_day, :integer
  end
end
