class CreateSharedRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_requests do |t|
      t.string :title
      t.string :comment
      t.string :text

      t.timestamps
    end
  end
end
