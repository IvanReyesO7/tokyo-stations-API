class Api::V1::StationsController < Api::V1::BaseController
  def index
    @stations = Station.all
  end
end
