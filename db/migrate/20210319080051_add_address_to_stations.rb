class AddAddressToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :address, :string
  end
end
