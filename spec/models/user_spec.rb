require 'rails_helper'

RSpec.describe User, type: :model do 
  
  before { @user = User.create!(email: "shawn@example.com", fname: "Shawn", lname: "Rodriguez", 
    dog_name: "Chester", bio: "This is my sample bio.", password: "password", password_confirmation: "password") }
  subject { @user }

  it { should have_many(:rejections) }
  it { should have_many(:rejectees) }
  it { should have_many(:reverse_rejections) }
  it { should have_many(:rejectors) }
  it { should have_many(:likes) }
  it { should have_many(:likees) }
  it { should have_many(:reverse_likes) }
  it { should have_many(:likers) }

  it { should have_many(:user_matches) }
  it { should have_many(:matches) }
  it { should have_many(:conversations) }
  it { should have_many(:messages) }

end