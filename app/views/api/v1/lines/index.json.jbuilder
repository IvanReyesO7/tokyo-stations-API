json.array! @lines do |line|
  json.extract! line, :id, :name, :stations
end
