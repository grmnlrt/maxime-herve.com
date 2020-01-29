class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :slug
      t.text :content_fr
      t.text :content_en

      t.timestamps
    end
  end
end
