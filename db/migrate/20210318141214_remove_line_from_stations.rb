class RemoveLineFromStations < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :line_id
  end
end
