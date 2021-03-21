class FixLineColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :lines, :name, :name_romaji
    add_column :lines, :name_kana, :string
    add_column :lines, :name_kanji, :string
  end
end
