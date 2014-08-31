class Message < ActiveRecord::Base
  
  belongs_to :conversation
  belongs_to :sender, class_name: "User", foreign_key: :sender_id
  belongs_to :recipient, class_name: "User", foreign_key: :recipient_id

  validates :sender_id, presence: true
  validates :recipient_id, presence: true
  validates :conversation_id, presence: true
  validates :body, presence: true, length: { minimum: 1 }

end
