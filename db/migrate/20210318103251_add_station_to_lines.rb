class AddStationToLines < ActiveRecord::Migration[6.0]
  def change
    add_reference :lines, :station, null: false, foreign_key: true
  end
end
