class User < ApplicationRecord
  mount_uploader :usericon, ImageUploader
  has_many :items
  has_many :requests
  has_many :favorites, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :relationships, foreign_key: :holder_id
  has_many :inverse_holders, foreign_key: :request_user_id, class_name: Relationship
  has_many :holders, through: :inverse_request_users
  has_many :shareditems
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, :omniauth_providers => [:facebook]
  validates_presence_of :username, :useraddress1, :useraddress2

end
