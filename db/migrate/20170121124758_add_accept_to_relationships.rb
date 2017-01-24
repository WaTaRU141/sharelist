class AddAcceptToRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :accept, :boolean, default: false, null: false
  end
end
