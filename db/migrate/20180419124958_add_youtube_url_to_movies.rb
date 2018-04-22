class AddYoutubeUrlToMovies < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :youtube_url, :string
  end
end
