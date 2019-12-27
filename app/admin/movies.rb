ActiveAdmin.register Movie do
  config.filters = false
  config.per_page = 15

  index do
    selectable_column
    column "Movie", sortable: :title do |movie|
      link_to movie.title, admin_movie_path(movie)
    end
    column "Director" do |movie|
      link_to movie.director, admin_movie_path(movie)
    end
    column "Year", sortable: :year do |movie|
      link_to movie.year, admin_movie_path(movie)
    end
    column "ID", sortable: :id do |movie|
      link_to movie.id, admin_movie_path(movie)
    end
    actions
  end

  permit_params :photo, :title, :director, :production, :genre, :movie_type, :year, :link, :synopsis, :casting, :informations

  form title: 'Movie' do |f|
    inputs "Infos" do
      input :title
      input :year
      input :genre
      input :movie_type
      input :informations
    end
    inputs " Synopsis" do
      input :synopsis
    end
    inputs "Staff" do
      input :director
      input :production
      input :casting
    end
    inputs "Links & Picture" do
      input :link
      input :photo, as: :file
    end
    actions
  end
end
