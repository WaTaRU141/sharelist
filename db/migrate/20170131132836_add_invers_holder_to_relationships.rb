class AddInversHolderToRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :invers_holder, :string
  end
end
