class Remov
  eAddressFromStations < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :address
  end
end
