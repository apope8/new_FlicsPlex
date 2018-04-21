class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
