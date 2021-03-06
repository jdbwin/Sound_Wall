class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :tracks
  has_many :votes
  has_many :reviews

end
