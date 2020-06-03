class HouseDatesController < ApplicationController
  def new
    @house_date = HouseDate.new
    authorize @house_date
    @house = House.find(params[:house_id])
  end

  def create
    @house_date = HouseDate.new(house_date_params)
    authorize @house_date
    @house = House.find(params[:house_id])
    @house_date.house = @house
    if @house_date.save
      redirect_to house_path(@house)
    else
      render :new
    end
  end

  def destroy
    @house_date = HouseDate.find(params[:id])
    @house_date.destroy
    redirect_to house_path(@house_date.house)
  end

  private

  def workshop_date_params
    params.require(:workshop_date).permit(:date, :start_at, :participants)
  end
end
