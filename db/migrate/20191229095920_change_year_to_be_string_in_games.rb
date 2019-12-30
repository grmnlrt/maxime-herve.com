class ChangeYearToBeStringInGames < ActiveRecord::Migration[5.2]
  def up
    change_column :games, :year, :string
  end

  def down
    change_column :games, :year, :integer
  end
end
