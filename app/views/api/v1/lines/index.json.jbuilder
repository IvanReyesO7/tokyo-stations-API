json.array! @lines do |line|
  json.extract! line, :id, :name, :line_code, :stations
end
