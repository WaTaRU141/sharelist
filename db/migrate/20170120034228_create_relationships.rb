class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :holder_id
      t.integer :request_user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
