class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.integer :item_id
      t.integer :shared_request_id

      t.timestamps


    end

  end
end
