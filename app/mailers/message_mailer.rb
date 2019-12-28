class MessageMailer < ApplicationMailer
  def new
    @message = params[:message]

    mail to: AdminUser.find_by(send_emails: true).email
  end
end
