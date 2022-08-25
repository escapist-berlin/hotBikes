class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bikes = Bike.where(user_id: current_user)
    @bookings = Booking.where(user_id: current_user)
    @user = current_user
  end
end
