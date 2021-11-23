class StationsController < ApplicationController

  def index
    @stations = Station.all.order(identifier: :asc)
  end
  
  def map
  end

end
