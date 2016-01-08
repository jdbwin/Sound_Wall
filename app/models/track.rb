class Track < ActiveRecord::Base
  before_create :default_values

  belongs_to :user
  has_many :reviews

  validates :title, :artist, :url, presence: true

  private

  def default_values
    self.votes ||= 0
  end

end
