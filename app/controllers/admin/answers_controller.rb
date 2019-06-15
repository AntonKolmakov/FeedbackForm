module Admin
  class AnswersController < Admin::ApplicationController
    expose :message
    expose :answer
    
    def create
      message.build_answer(answer_params).save
      UserMailer.with(message: message).feedback_email.deliver_now
      respond_with :admin, message, location: -> { admin_root_path }
    end

  private

    def answer_params
      params.require(:answer).permit!
    end   
  end
end