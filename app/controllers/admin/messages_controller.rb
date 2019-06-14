module Admin
  class MessagesController < Admin::ApplicationController
    expose :message
    expose (:answer) { message.build_answer }

  private

    def message_params
      params.require(:message).permit!
    end   
  end
end