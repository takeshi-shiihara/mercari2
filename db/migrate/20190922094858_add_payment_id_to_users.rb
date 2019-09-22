class AddPaymentIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :payment_id, :integer
  end
end
