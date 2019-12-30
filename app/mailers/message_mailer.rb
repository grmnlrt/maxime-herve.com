class MessageMailer < ApplicationMailer
  def new
    @message = params[:message]
    @email = AdminUser.find_by(send_emails: true).email

    if Rails.env.production?
      mail_with_sendgrid_api
    else
      mail to: @email
    end
  end

  private

  def mail_with_sendgrid_api
    sg = SendGrid::API.new(api_key: Rails.application.credentials.sendgrid_api_key) # => uses API v3
    from = SendGrid::Email.new(email: @message.email)
    to = SendGrid::Email.new(email: @email)
    content = SendGrid::Content.new(type: 'text/html', value: @message.content)
    mail = SendGrid::Mail.new(from, @message.subject, to, content)
    sg.client.mail._('send').post(request_body: mail.to_json)
  end
end
