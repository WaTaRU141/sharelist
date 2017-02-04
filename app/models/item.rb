class Item < ApplicationRecord
	has_many :item_images
	mount_uploader :picture, PictureUploader
	belongs_to :user
	has_many :favorites, dependent: :destroy
	has_many :relationships
	has_many :request_users, through: :relationships
	# belongs_to :shareditem
	# attr_accessible :perfect_address, :latitude, :longitude
	geocoded_by :perfect_address
    after_validation :geocode



	def perfect_address
		#address1とaddress2を連結させる処理
		user.useraddress1 + user.useraddress2
	end
	

	def favorited_by? user
		favorites.where(user_id: user.id).exists?
	end
end
