class Vote < ActiveRecord::Base
  belongs_to :track

  validates :track_id, uniqueness: {scope: :user_id}
end
