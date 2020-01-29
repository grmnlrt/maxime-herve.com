class AddInformationsToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :informations, :text
  end
end
