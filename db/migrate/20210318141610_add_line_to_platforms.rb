class AddLineToPlatforms < ActiveRecord::Migration[6.0]
  def change
    add_reference :platforms, :station, foreign_key: true
    add_reference :platforms, :line, foreign_key: true
  end
end
