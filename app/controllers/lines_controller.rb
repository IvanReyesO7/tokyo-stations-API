class LinesController < ApplicationController
  def display
    @lines = Line.all.order(id: :asc)
  end
end
