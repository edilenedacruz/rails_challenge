class RestaurantsController < ApplicationController
  def new
    @user = current_user
    @restaurant = Restaurant.new
  end
end
