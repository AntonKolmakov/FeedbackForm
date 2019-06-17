class Email
  def self.deliver(message)
  	EmailWorker.perform_async(message.id)
  end
end