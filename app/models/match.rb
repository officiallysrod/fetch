class Match < ActiveRecord::Base

  has_many :user_matches, dependent: :destroy
  has_many :users, through: :user_matches

  has_one :conversation, dependent: :destroy
  has_many :messages, through: :conversations

end