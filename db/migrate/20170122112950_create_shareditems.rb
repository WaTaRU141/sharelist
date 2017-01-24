class CreateShareditems < ActiveRecord::Migration[5.0]
  def change
    create_table :shareditems do |t|
      t.string :picture
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
