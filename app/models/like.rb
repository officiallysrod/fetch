class Like < ActiveRecord::Base

  belongs_to :liker, class_name: "User", foreign_key: :liker_id
  belongs_to :likee, class_name: "User", foreign_key: :likee_id

  # validates :liker_id, presence: true
  # validates :likee_id, presence: true

end
