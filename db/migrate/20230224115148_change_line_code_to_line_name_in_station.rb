class ChangeLineCodeToLineNameInStation < ActiveRecord::Migration[6.0]
  def change
    rename_column :stations, :lines_code, :line_names
  end
end
