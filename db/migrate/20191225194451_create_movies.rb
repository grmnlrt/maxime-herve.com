class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :production
      t.string :genre
      t.string :movie_type
      t.integer :year
      t.string :link
      t.text :synopsis
      t.text :casting
      t.text :informations

      t.timestamps
    end
  end
end
