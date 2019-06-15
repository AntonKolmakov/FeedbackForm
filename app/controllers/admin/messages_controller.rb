module Admin
  class MessagesController < Admin::ApplicationController
    expose :message
    expose :answer, :build_answer

  private

    def build_answer
      unless message.answer.present?
        message.build_answer
      else
      	message.answer
      end
    end
  end
end