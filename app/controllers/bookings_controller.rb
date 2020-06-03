class BookingsController < ApplicationController
  def create
    date = HouseDate.find(params[:date])
    house = House.find(params[:house_id])
    profile = current_user.profile
    @booking = Booking.create!(
      date: date.date,
      status: 'pending',
      workshop: house,
      profile: profile)
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path(@booking.profile)
  end
end
