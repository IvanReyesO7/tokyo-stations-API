class RemoveStationFromLines < ActiveRecord::Migration[6.0]
  def change
    remove_column :lines, :station_id
  end
end
