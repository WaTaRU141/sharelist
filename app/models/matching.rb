class Matching < ApplicationRecord
	has_many :holders, class_name: User
	has_many :request_users, class_name: User
	has_many :items
end
