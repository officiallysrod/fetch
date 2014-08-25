class UserMatch < ActiveRecord::Base
  belongs_to :user
  belongs_to :match

  validates :user_id, presence: true
  validates :match_id, presence: true

end
