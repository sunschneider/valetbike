class BikesController < ApplicationController
  before_action :get_bike

  def show
      @bikes = @station.docked_bikes
  end

  def index
  end

  def payment
  end
  
  def edit
  end
  
  def checkout
    @bike = Bike.find(params[:bike_id])
    @station = Station.find(params[:station_id])
    @bike.current_station_id = nil
    @bike.current_user_id = current_user[:id]
    @bike.save
    redirect_to(station_bike_path(@station))
  end

  def delete
  end
 
  def destroy
  end


  private
  def get_bike
    @station = Station.find(params[:station_id])
  end
end 
