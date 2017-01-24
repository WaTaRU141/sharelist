class CreateSheredRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :shered_requests do |t|
      t.string :title
      t.string :comment
      t.string :text

      t.timestamps
    end
  end
end
