class RemovepostNumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :post_number, :string
  end
end
