class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
      t.references :item, foreign_key: true
      t.text :image_url

      t.timestamps
    end
  end
end
