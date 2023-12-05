class StationTrainsController < ApplicationController
  def index
    @station = Station.find(params[:station_id])
    @trains = @station.trains
  end

end