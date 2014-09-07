require 'rails_helper'

RSpec.describe Like, type: :model do

  before { @like = Like.create!(liker_id: 2, likee_id: 3) }

  subject { @like }

  it { should belong_to (:liker) }
  it { should belong_to (:likee) }

end