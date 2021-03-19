json.array! @stations do |station|
  json.extract! station, :id, :name_kanji, :name_kana, :name, :lat, :lon, :ward, :lines_code, :address
end
