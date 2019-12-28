class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.new.subject
  #
  def new
    @message = params[:message]

    mail to: AdminUser.find(send_emails: true).email
  end
end
