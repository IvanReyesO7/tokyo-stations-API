class AddLinesToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :lines, :text, array: true, default: []
  end
end
