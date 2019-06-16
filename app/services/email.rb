class Email
  def self.deliver(message)
    UserMailer.with(message: message).feedback_email.deliver_now
  end
end