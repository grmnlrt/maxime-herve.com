class MessageMailerPreview < ActionMailer::Preview
  def new
    message = Message.first
    MessageMailer.with(message: message).new
  end
end
