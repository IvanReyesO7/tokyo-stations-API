class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :stations, :name, :name_romaji
  end
end
