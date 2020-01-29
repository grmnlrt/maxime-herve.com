class PagesController < ApplicationController
  def home
  end

  def contact
    @message = Message.new
  end

  def informations
    @rewards = Reward.all
    @page = Page.find_by(slug: 'informations')
  end
end
