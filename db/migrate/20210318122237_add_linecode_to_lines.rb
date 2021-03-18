class AddLinecodeToLines < ActiveRecord::Migration[6.0]
  def change
    add_column :lines, :line_code, :string
  end
end
