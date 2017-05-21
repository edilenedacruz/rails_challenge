class RestaurantsController < ApplicationController
  def new
    # binding.pry
    @user = current_user
    @restaurant = Restaurant.new
  end

  def create
    @user = current_user
    @restaurant = current_user.restaurants.create(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine, :city, :state, :zip)
  end
end
