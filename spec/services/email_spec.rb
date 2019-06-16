require 'spec_helper'

describe Email do
  describe '#send_email' do
    let(:message) { create(:message, question: true) }
    let!(:answer) { create(:answer, message: message) }
    let(:mail) { Email.deliver(message) }
    let(:description_answer) { message.answer.description } 

    it "delivers email" do
      expect(mail.subject).to eq("Feedback from@example.com")
      expect(mail.to).to eq([message.email])
      expect(mail.from).to eq(["from@example.com"])
      expect(mail.body.raw_source).to include description_answer
    end
  end
end