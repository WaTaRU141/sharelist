class AddUsermessageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :usermessage, :text
  end
end
