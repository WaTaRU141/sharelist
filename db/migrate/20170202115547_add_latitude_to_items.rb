class AddLatitudeToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :latitude, :float
  end
end
