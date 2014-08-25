class User < ActiveRecord::Base

  has_secure_password

  #? has_and_belongs_to_many :nearby_users, dependent: :destroy

  #user's location
  has_one :location, dependent: :destroy

  #rejection data relationships
  has_many :rejections, foreign_key: "rejector_id", dependent: :destroy
  has_many :rejectees, through: :rejections
  has_many :reverse_rejections, foreign_key: "rejectee_id", class_name: "Rejection", dependent: :destroy
  has_many :rejectors, through: :reverse_rejections

  #like data relationships
  has_many :likes, foreign_key: "liker_id", dependent: :destroy
  has_many :likees, through: :likes
  has_many :reverse_likes, foreign_key: "likee_id", class_name: "Like", dependent: :destroy
  has_many :likers, through: :reverse_likes

  #match relationships
  has_many :matches, dependent: :destroy
  has_many :friends, through: :matches

  #conversation and message relationships
  has_many :conversations, through: :matches, dependent: :destroy
  has_many :messages, through: :conversations, dependent: :destroy

  #need to add Paperclip gem for has_attached_file
  # has_attached_file :profile_pic

  #validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :fname, presence: true, length: { in: 3..30 }
  validates :lname, presence: true, length: { in: 3..30 }
  validates :dog_name, presence: true, length: { in: 3..30 }
  validates :bio, presence: true
  validates :password, presence: true, length: { in: 6..20 }

  #formatting user inputs before save
  before_save { self.email = email.downcase }
  before_save { self.fname = fname.titleize }
  before_save { self.lname = lname.titleize }
  before_save { self.dog_name = dog_name.titleize }

end
