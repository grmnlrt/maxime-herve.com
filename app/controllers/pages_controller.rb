class PagesController < ApplicationController
  def home
    @rewards = Reward.all
    @page = Page.find_by(slug: 'informations')
  end

  def contact
    @message = Message.new
  end
end
