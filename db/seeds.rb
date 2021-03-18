require 'json'
require 'open-uri'

url = 'https://raw.githubusercontent.com/piuccio/open-data-jp-railway-stations/master/stations.json'
user_serialized = open(url).read
# in this json we have a list of several stations all over Japan, we only need Tokyo for this project
tokyo_stations = JSON.parse(user_serialized).select{ |station| station["prefecture"] == "13" }

#Create an array of existing lines
tokyo_lines = []
tokyo_stations.each do |station|
  station["line_codes"].each do |line|
    tokyo_lines << line if !tokyo_lines.include?(line)
  end
end

tokyo_lines.map { |line| line.split(".").join(" ") }
tokyo_lines.each do |line|
  puts "Creating #{line} line"
  Line.new()
end

