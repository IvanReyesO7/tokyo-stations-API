class PagesController < ApplicationController
  def home
    @stations = Station.all
  end

end
