module Admin
  class AnswersController < Admin::ApplicationController
    expose :message
    expose (:answer) { message.build_answer}
    
    def create
      if answer.save
        UserMailer.with(message: message).feedback_email.deliver_now
        respond_with :admin, message, location: -> { admin_root_path }
      else
        render 'admin/messages/edit'
      end
    end

  private

    def answer_params
      params.require(:answer).permit(:description)
    end   
  end
end