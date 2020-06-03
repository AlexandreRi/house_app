class HousesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @houses = policy_scope(House)
    authorize @houses
    @houses_geo = House.geocoded
    @markers = @houses_geo.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { house: house })
      }
    end
  end

  def new
    @house = House.new
    authorize @house
  end

  def show
    @house = House.find(params[:id])
    authorize @house
    @booking = Booking.new
  end

  def create
    @house = House.new(strong_params)
    authorize @house
    @house.user_id = current_user.id
    @house.save
    redirect_to house_path(@house)
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
    params.require(:house).permit(:name, :address, :price, :description, :rating, :photo)
  end
end
