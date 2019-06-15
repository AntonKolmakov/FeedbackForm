class MessagesController < ApplicationController

  def new
  	@message = Message.new(question: params[:question])
  end

  def create
  	@message = Message.new(message_params)
    if @message.save
      respond_with @message, location: -> { root_path }
    else
      render :new
    end
  end
  
private

  def message_params
  	params.require(:message).permit(:description, :email, :question)
  end
end