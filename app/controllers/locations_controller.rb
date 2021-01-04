class LocationsController < ApplicationController
  before_action :set_location, only: [:show]

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations.to_json(include: :temperatures)
  end

  # GET /locations/1
  def show
    @location = Location.find(params[:id])
    render json: @location.to_json(include: :temperatures)
  end

end
