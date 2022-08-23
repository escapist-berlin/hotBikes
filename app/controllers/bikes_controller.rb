class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new # Needed to instantiate the form_with
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save

    redirect_to bike_path(@bike)
  end

  private

  def bike_params
    params.require(:bike).permit(:title, :price)
  end
end
