json.array! @lines do |line|
  json.extract! line,
    :name_romaji,
    :name_kanji,
    :name_kana,
    :line_code,
    :icon
    json.stations line.stations do |station|
      json.extract! station, :name_kanji, :name_kana, :name_romaji
    end
end
