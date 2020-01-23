class AddAsAssistantToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :as_assistant, :boolean, default: false
  end
end
