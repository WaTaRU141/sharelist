class RenameReqyestUserIdToMatchings < ActiveRecord::Migration[5.0]
  def change
  	rename_column :matchings, :reqyest_user_id, :request_user_id
  end
end
