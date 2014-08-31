class Conversation < ActiveRecord::Base
  
  belongs_to :match
  has_many :users, through: :match
  has_many :messages, dependent: :destroy

  validates :match_id, presence: true

end
