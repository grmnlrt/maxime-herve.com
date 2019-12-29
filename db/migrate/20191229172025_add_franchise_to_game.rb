class AddFranchiseToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :franchise, :string
  end
end
