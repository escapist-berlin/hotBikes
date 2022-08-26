class BookingsController < ApplicationController
  def new
    @user = current_user
    @booking = Booking.new
    @bike = Bike.find(params[:bike_id])
  end

  def create
    @user = current_user
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.bike = @bike
    @booking.save
    redirect_to bikes_path, notice: "Booking was successful!"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to dashboard_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
