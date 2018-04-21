class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @movies = Movie.order(:title)
    @movies = Movie.all
  end
end