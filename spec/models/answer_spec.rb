require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should belong_to(:message) }
  it { should validate_presence_of(:description) }
end