class Api::V1::LinesController < Api::V1::BaseController
  def index
    if params[:query].present?
      sql_query = "name_romaji ILIKE :query OR name_kanji ILIKE :query OR name_kana ILIKE :query"
      @lines = Line.where(sql_query, query: "%#{params[:query]}%")
    else
      @lines = Line.all.order(created_at: :asc)
    end
  end
end
