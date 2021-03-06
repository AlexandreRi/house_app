class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:public]

  def show
    authorize @profile
  end

  def public
    @profile = Profile.find(params[:profile_id])
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def update
    authorize @profile
    @profile.update(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:last_name, :first_name, :address, :city, :photo)
  end
end
