class Api::V1::AirportsController < Api::V1::ApplicationController
  def index
    airports = Airport.all
    render json: airports
  end
end
