class Vote < ActiveRecord::Base
  belongs_to :track

  validates :tracks_id, uniquness: {scope: :user_id}
end
