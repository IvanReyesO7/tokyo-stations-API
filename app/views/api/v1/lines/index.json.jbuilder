json.array! @lines do |line|
  json.extract! line,
    :name_romaji,
    :name_kanji,
    :name_kana,
    :line_code,
    :icon,
    :stations
end
