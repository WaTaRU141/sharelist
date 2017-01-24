class AddUseraddress2ToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :useraddress2, :string
  end
end
