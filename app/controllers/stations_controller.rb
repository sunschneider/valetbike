class StationsController < ApplicationController

  def index
    @stations = Station.all.order(identifier: :asc)
  end

  def show
    @stations = Station.where.not(latitude: 'Empty', longitude: "Empty").pluck(:longitude, :latitude, :name)
    @markers = []
    @stations.each do |c|
      @hash = {:latlng => c, :popup => c[-1]}
      @markers << @hash
    end
  end

end
