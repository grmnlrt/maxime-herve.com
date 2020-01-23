class AddPublishedToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :published, :boolean, default: true
  end
end
