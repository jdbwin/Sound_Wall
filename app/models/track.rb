class Track < ActiveRecord::Base

  scope :genre_search, ->(genre) {where("genre like ?", genre)}
  scope :artist_search, ->(artist) {where("artist like ?", artist)}

  belongs_to :user
  has_many :reviews
  has_many :votes

  validates :title, :artist, :url, presence: true

  def number_of_votes
    return self.votes.count
  end

end
