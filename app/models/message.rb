class Message < ActiveRecord::Base
  
  belongs_to :conversation
  belongs_to :user

  validates :user_id, presence: true
  validates :sender_id, presence: true
  validates :recipient_id, presence: true
  validates :conversation_id, presence: true
  validates :body, presence: true, length: { minimum: 1 }

end
