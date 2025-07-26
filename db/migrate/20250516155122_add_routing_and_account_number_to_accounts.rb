class AddRoutingAndAccountNumberToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :routing_number, :string
    add_column :accounts, :account_number, :string
  end
end
