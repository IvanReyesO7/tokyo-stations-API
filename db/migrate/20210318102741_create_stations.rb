class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :name_kanji
      t.float :lat
      t.float :lon
      t.string :ward

      t.timestamps
    end
  end
end
