class Track < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  validates :title, :artist, :url, presence: true

end
