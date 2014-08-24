class Rejection < ActiveRecord::Base

  belongs_to :rejector, class_name: "User"
  belongs_to :rejectee, class_name: "User"

  validates :rejector_id, presence: true
  validates :rejectee_id, presence: true

end
