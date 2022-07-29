class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show create]

  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def create

  end


  def show
  end

  private

  def find_restaurant
    @restaurant = Restaurant.fint(params[:id])
  end
end
