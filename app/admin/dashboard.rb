ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    ActiveAdmin.setup do |config|
      config.namespace :admin do |admin|
        admin.build_menu :utility_navigation do |menu|
          admin.add_current_user_to_menu  menu
          admin.add_logout_button_to_menu menu
        end
      end
    end

    columns do
      column do
        panel link_to("Movies Dashboard", admin_movies_path) do
          ul do
            Movie.last(4).map do |movie|
              li link_to(movie.title, admin_movie_path(movie))
            end
          end
        end
      end
      column do
        panel link_to("Games Dashboard", admin_games_path) do
          ul do
            Game.last(4).map do |game|
              li link_to(game.title, admin_game_path(game))
            end
          end
        end
      end
    end

  end
end
