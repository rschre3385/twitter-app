class User < ApplicationRecord
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, presence: true, uniqueness: true

  has_many :tweets

  mount_uploader :avatar, AvatarUploader

  serialize :following, Array 


end
