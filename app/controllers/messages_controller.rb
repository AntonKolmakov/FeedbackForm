class MessagesController < ApplicationController
  def new
  	@message = Message.new(question: params[:question])
  end

  def create
  	@message = Message.create(message_params)
    respond_with @message, location: -> { root_path }
  end
  
private

  def message_params
  	params.require(:message).permit(:description, :email, :question)
  end
end