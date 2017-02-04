class AddLongitudeToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :longitude, :float
  end
end
