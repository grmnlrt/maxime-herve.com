class GamesController < ApplicationController
  def index
    @games = Game.order(year: :desc, title: :asc).page(params[:page])
  end
end
