class AddUseraddress1ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :useraddress1, :string
  end
end
