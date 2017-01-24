class CreateMypages < ActiveRecord::Migration[5.0]
  def change
    create_table :mypages do |t|
      t.string :name
      t.string :message
      t.string :text
      t.string :icon
      t.string :string
      t.string :address1
      t.string :string
      t.string :address2
      t.string :string
      t.string :email

      t.timestamps
    end
  end
end
