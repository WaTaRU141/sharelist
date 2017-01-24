class Item < ApplicationRecord
	has_many :item_images
	mount_uploader :picture, PictureUploader
	belongs_to :user
	has_many :favorites, dependent: :destroy
	has_many :relationships
	has_many :request_users, through: :relationships
	# belongs_to :shareditem

	def favorited_by? user
		favorites.where(user_id: user.id).exists?
	end
end
