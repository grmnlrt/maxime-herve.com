class AddPriorityToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :priority, :integer, default: 1
  end
end
