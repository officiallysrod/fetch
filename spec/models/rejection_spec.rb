require 'rails_helper'

RSpec.describe Rejection, type: :model do

  before { @rejection = Rejection.create!(rejector_id: 2, rejectee_id: 3) }

  subject { @rejection }

  it { should belong_to (:rejector) }
  it { should belong_to (:rejectee) }

end