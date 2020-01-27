class AddComposerToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :composer, :string
  end
end
