class Api::V1::StationsController < Api::V1::BaseController
  def index
    if params[:query].present?
    @stations = Station.where("name ILIKE ?", "%#{params[:query]}%")
    else
    @stations = Station.all.order(created_at: :asc)
    end
  end
end
