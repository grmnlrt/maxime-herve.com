class RemoveFranchiseToGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :franchise
  end
end
