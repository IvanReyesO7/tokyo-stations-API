class ChangeLineCodeToLineName < ActiveRecord::Migration[6.0]
  def change
    rename_column :lines, :line_code, :line_name
  end
end