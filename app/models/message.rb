class Message < ApplicationRecord
  validates :email, :subject, :content, presence: true
end
