module Admin
  class AnswersController < Admin::ApplicationController
    expose :message
    expose :answer
    
    def create
      message.build_answer(answer_params).save
      respond_with :admin, message, location: -> { admin_root_path }
    end

  private

    def answer_params
      params.require(:answer).permit!
    end   
  end
end