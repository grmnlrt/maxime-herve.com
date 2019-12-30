class AddGenreToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :genre, :string
  end
end
