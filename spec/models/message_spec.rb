require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should have_one(:answer) }
  it { should validate_presence_of(:description) }

  it "is valid when user without email post feedback" do
    message = build :message, email: nil
    expect(message).to be_valid
  end

  it "find records with unread messages" do
    question_messages = create_list(:message, 10, question: true)
    question_message = create(:message, question: true)
    answer_message = create(:answer, message: question_message)
    feedback_message = create(:message)
    expect(Message.all.count).to eq(10)
    expect(Message.all).not_to include([feedback_message, question_message])
  end

  it "is valid with valid attributes" do
    message = build :message
    expect(message).to be_valid
  end

  it "is not valid when user post question with blank email" do
    message = build :message, email: ''
    expect(message).to_not be_valid
  end
end