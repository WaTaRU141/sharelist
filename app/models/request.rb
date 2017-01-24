class Request < ApplicationRecord
	belongs_to :user

	validates :title, :comment,  presence: true
	validates :comment, presence: true, length: { in: 1..300}
end
