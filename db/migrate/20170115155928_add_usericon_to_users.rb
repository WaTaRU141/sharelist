class AddUsericonToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :usericon, :string
    add_column :users, :string, :string
  end
end
