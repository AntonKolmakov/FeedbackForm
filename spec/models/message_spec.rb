require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should have_one(:answer) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:description) }
end