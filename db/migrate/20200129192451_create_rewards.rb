class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
