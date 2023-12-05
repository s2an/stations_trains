class StationsController < ApplicationController
  def index
    @stations = Station.all.order(created_at: :desc)
  end
  
  def show
    @station = Station.find(params[:id])
  end
  
end

# removed for I1,US6 - @stations = Station.all