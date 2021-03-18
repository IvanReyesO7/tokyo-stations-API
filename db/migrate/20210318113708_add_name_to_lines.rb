class AddNameToLines < ActiveRecord::Migration[6.0]
  def change
    add_column :lines, :name, :string
  end
end
