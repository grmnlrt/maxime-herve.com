class MessagesController < ApplicationController
  invisible_captcha only: :create

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Form successfully sent. Thanks!"
      redirect_to contact_path
    else
      render 'pages/contact'
    end
  end

  private

  def message_params
    params.require(:message).permit(:email, :subject, :content)
  end
end
