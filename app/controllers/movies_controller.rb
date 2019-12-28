class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page])
  end
end
