ActiveAdmin.register Game do
  config.filters = false # disabled filters for games

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

  permit_params :title, :developer, :editor, :role, :year, :link, :photo
  form title: 'Game' do |f|
    inputs "Contenu" do
      f.input :title
      f.input :year
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
