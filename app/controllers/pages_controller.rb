class PagesController < ApplicationController
  def home
    @stations = Station.all.order(created_at: :asc)
  end

end
