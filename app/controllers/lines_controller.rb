class LinesController < ApplicationController
  def display
    @lines = Line.all.order(created_at: :asc)
  end
end
