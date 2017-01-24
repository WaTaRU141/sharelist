class AddCommentToRelationships < ActiveRecord::Migration[5.0]
  def change
    add_column :relationships, :comment, :text
  end
end
