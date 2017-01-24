class CreateMatchings < ActiveRecord::Migration[5.0]
  def change
    create_table :matchings do |t|
      t.integer :holder_id
      t.integer :reqyest_user_id
      t.integer :item_id
      t.text :comment
      t.boolean :accept

      t.timestamps
    end
  end
end
