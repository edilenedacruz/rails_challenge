class RestaurantsController < ApplicationController
  def new
    binding.pry
    @user = current_user
    @restaurant = Restaurant.new
  end
end
