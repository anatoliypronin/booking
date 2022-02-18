class Api::V1::AircraftsController < Api::V1::ApplicationController
  def index
    aircrafts = Aircraft.all
    render json: aircrafts
  end
end
