class Conversation < ActiveRecord::Base
  
  belongs_to :match
  has_many :users, through: :matches
  has_many :messages, dependent: :destroy

end
