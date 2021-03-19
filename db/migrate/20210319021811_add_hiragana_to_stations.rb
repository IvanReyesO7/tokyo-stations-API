class AddHiraganaToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :name_kana, :string
  end
end
