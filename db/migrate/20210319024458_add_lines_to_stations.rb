class AddLinesToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :lines_code, :text, array: true, default: []
  end
end
