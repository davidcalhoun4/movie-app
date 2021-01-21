class RemoveStringFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :string, :string
  end
end
