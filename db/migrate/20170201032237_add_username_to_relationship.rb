class AddUsernameToRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :username, :string
  end
end
