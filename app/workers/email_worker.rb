class EmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(message_id)
    message = Message.unscoped.find(message_id)
    UserMailer.with(message: message).feedback_email.deliver_now
  end
end
