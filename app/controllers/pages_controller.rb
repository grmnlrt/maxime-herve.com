class PagesController < ApplicationController
  def home
  end

  def contact
    @message = Message.new
  end

  def informations
    @page = Page.find_by(slug: 'informations')
  end
end
