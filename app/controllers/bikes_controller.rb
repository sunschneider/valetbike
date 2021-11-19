class BikesController < ApplicationController
  before_action :get_bike

  def show
      @bikes = @station.docked_bikes
  end

  def index
  end

  def payment
  end
 
  def update
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
