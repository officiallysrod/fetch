class Like < ActiveRecord::Base

  belongs_to :liker, class_name: "User"
  belongs_to :likee, class_name: "User"

  validates :liker_id, presence: true
  validates :likee_id, presence: true

end
