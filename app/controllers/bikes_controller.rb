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
    #for checking out a bike
    @bike = Bike.find(params[:id])
    @bike.current_station_id = NULL
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
