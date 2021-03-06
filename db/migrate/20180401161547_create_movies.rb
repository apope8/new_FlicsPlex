class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.decimal :price, precision: 8, scale: 2
      t.text :description
      t.string :imdb_id
      t.string :poster_url

      t.timestamps
    end
  end
end
