class Message < ApplicationRecord
  validates :email, :subject, :content, presence: true
  after_create :send_email

  private

  def send_email
    MessageMailer.with(message: self).new.deliver_now
  end
end
