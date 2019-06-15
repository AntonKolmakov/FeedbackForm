class MessagesController < ApplicationController
  expose :message

  def index
  end

  def create
    if message.save
      respond_with message, location: -> { root_path }
    else
      render :index
    end
  end
  
private

  def message_params
  	params.require(:message).permit(:description, :email)
  end
end