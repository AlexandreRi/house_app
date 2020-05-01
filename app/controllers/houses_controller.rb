class HousesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
    authorize @house
  end

  def show
    @house = House.find(params[:id])
    authorize @house
  end

  def create
    @house = House.new(strong_params)
    authorize @house
    @house.save
    redirect_to root_path
  end

  def edit
    @house = House.find(params[:id])
    @house = House.new
    authorize @house
  end

  def update
    @house = House.find(params[:id])
    @house = House.new(strong_params)
    authorize @house
    redirect_to house_path
  end

  def destroy
    authorize @house
    @house = House.find(params[:id])
    @house.destroy
    redirect_to root_path
  end

  private

  def strong_params
    params.require(:house).permit(:name, :address, :price, :rating)
  end
end
