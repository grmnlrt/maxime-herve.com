class AddComposerToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :composer, :string
  end
end
