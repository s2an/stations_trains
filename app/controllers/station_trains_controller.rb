class StationTrainsController < ApplicationController
  def index
    @station = Station.find(params[:id])
    @trains = @station.trains
  end

end