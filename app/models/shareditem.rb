class Shareditem < ApplicationRecord
	has_many :relationship
	belongs_to :user
end
