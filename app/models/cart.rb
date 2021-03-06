class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_movie(movie)
    current_item = line_items.find_by(movie_id: movie.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(movie_id: movie.id)
      current_item.price = current_item.movie.price
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
