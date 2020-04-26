class HousesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]

  def home
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def show
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(strong_params)
    @house.save
    redirect_to root_path
  end

  def edit
    @house = House.find(params[:id])
    @house = House.new
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @house = House.new(strong_params)
    redirect_to house_path
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:house).permit(:name, :address, :price, :rating)
  end
end
