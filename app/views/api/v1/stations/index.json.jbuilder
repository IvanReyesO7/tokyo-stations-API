json.array! @stations do |station|
  json.extract! station, :id, :name_kanji, :name_kana, :name_romaji, :lat, :lon, :lines_code, :address
end
