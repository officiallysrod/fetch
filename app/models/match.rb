class Match < ActiveRecord::Base

  belongs_to :user
  belongs_to :friend, class_name: "User"
  has_one :conversation
  has_many :messages, through: :conversations

  validates :user_id, presence: true
  validates :friend_id, presence: true

end
