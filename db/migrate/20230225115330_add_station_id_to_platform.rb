class AddStationIdToPlatform < ActiveRecord::Migration[6.0]
  def change
    add_column :platforms, :station_line_id, :string
  end
end
