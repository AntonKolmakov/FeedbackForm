class UserMailer < ApplicationMailer

  def feedback_email
    @message = params[:message]
    mail(to: @message.email, subject: 'Feedback from@example.com')
  end
end
