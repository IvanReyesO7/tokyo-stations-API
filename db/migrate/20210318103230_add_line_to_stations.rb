class AddLineToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :line, null: false, foreign_key: true
  end
end
