class MoviesController < ApplicationController
  def index
    @movies = Movie.order(year: :desc, priority: :asc, title: :asc).page(params[:page])
  end
end
