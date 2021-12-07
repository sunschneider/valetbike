class StationsController < ApplicationController

  def index
    @stations = Station.all.order(identifier: :asc)
  end

  def show
    @stations = Station.where.not(latitude: 'Empty', longitude: "Empty").pluck(:latitude, :longitude, :name)
    @bikeCount = []
    @markers = []
    @count = 0
    for station in Station.all do
      @bikeCount << station.docked_bikes.count
    end
    @stations.each do |c|
      @hash = {:latlng => c, :popup => c[-1] + ", " + @bikeCount[@count].to_s + " Bikes"}
      @markers << @hash
      @count += 1
    end
  end

end
