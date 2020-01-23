class MoviesController < ApplicationController
  def index
    @movies = Movie.published.order(as_assistant: :asc, year: :desc, priority: :asc, title: :asc).page(params[:page])
  end
end
