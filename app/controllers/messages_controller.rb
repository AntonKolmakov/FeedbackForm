class MessagesController < ApplicationController
  expose :message

  def create
    message.save
    respond_with message, location: -> { root_path }
  end
  
private

  def message_params
  	params.require(:message).permit(:description, :email)
  end
end