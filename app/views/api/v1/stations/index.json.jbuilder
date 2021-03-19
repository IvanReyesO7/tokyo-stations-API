json.array! @stations do |station|
  json.extract! station, :id, :name_kanji
end
