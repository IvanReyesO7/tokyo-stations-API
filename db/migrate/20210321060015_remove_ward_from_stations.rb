class RemoveWardFromStations < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :ward
  end
end
