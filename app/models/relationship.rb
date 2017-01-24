class Relationship < ApplicationRecord
	belongs_to :holder, class_name: User
	belongs_to :request_user, class_name: User
	belongs_to :item
	belongs_to :shareditem
	belongs_to :inverse_holders, class_name: User

	validates :holder_id, presence: true
	validates :request_user_id, presence: true
	#validates :request_user_id, uniqueness: { scope: :item_id}

end
