ActiveAdmin.register Game do
  menu priority: 2
  config.filters = false
  config.per_page = 15

  action_item :view_site do
    link_to "Go to games page", "/games", target: "_blank"
  end

  index do
    selectable_column
    column "Game", sortable: :title do |game|
      link_to game.title, admin_game_path(game)
    end
    column "Developer" do |game|
      link_to game.developer, admin_game_path(game)
    end
    column "Role", sortable: :role do |game|
      link_to game.role, admin_game_path(game)
    end
    column "Year", sortable: :year do |game|
      link_to game.year, admin_game_path(game)
    end
    actions
  end

  permit_params :title, :developer, :editor, :role, :year, :franchise, :genre, :link, :photo
  form title: 'Game' do |f|
    inputs "Contenu" do
      f.input :title
      f.input :franchise
      f.input :year
      f.input :genre
      f.input :editor
      f.input :developer
      f.input :role
      f.input :link
    end
    inputs "Picture" do
      f.input :photo, as: :file
    end
    actions
  end
end
