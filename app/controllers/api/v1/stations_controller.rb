class Api::V1::StationsController < Api::V1::BaseController
  def index
    if params[:query].present?
      sql_query = "name_romaji ILIKE :query OR name_kanji ILIKE :query OR name_kana ILIKE :query"
      @stations = Station.where(sql_query, query: "%#{params[:query]}%")
    else
      @stations = Station.all.order(created_at: :asc)
    end
  end
end
