json.array! @lines do |line|
  json.extract! line, :name, :line_code, :stations
end
