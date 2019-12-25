class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :developer
      t.string :editor
      t.string :role
      t.integer :year
      t.string :link

      t.timestamps
    end
  end
end
