class Track < ActiveRecord::Base

  belongs_to :user
  has_many :reviews
  has_many :votes

  validates :title, :artist, :url, presence: true

  def number_of_votes
    return self.votes.count
  end
  
end
