class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile, dependent: :destroy
  after_create :create_profile

  private

  def create_profile
    @user = User.last
    @profile = Profile.new
    @profile.user = @user
    @profile.save
  end
end
