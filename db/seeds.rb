require 'json'
require 'open-uri'
require 'miyabi'
require "romaji"

puts "Deleting all the existing platforms..."
Platform.destroy_all


puts "Deleting all the existing lines..."
Line.destroy_all

# puts "Deleting all the existing stations..."
# Station.destroy_all

# url = 'https://raw.githubusercontent.com/piuccio/open-data-jp-railway-stations/master/stations.json'
# user_serialized = open(url).read
# tokyo_stations = JSON.parse(user_serialized).select{ |station| station["prefecture"] == "13" }

url = 'https://raw.githubusercontent.com/piuccio/open-data-jp-railway-lines/master/lines.json'
user_serialized = open(url).read
tokyo_lines = JSON.parse(user_serialized).select{ |line| line["prefectures"].include?("13") }
# Creation of lines
url = 'https://raw.githubusercontent.com/piuccio/open-data-jp-railway-lines-logo/master/logos.json'
user_serialized = open(url).read
icons = JSON.parse(user_serialized)


tokyo_lines.each do |line|
  new_line = Line.new(
    line_code: line["code"],
    name_romaji: line["name_romaji"] == "" ? line["code"].gsub("."," ") : line["name_romaji"],
    name_kana: line["name_kana"],
    name_kanji: line["name_kanji"],
    )
  icon = icons.select { |icon| icon["text"].include? new_line.name_kanji }
  new_line.icon = icon == [] ? [] : icon[0]["image"]
  new_line.save
end



# Creation of stations

# puts "Creating #{tokyo_stations.length} stations"
# tokyo_stations.each do |station|
#   new_station = Station.new(
#     name_romaji: station["name_kanji"].is_kana? ? (Romaji.kana2romaji station["name_kanji"]).capitalize : (Romaji.kana2romaji station["name_kanji"].to_kanhira).capitalize,
#     name_kana: (station["name_kanji"].is_kana? ? station["name_kanji"] : station["name_kanji"].to_kanhira),
#     name_kanji: station["name_kanji"],
#     lines_code: station["line_codes"],
#     lat: station["stations"][0]["lat"],
#     lon: station["stations"][0]["lon"],
#     )
#   new_station.save
#   puts "#{new_station.name_kanji} created!"
# end

# # Creation of joint table

puts "Creating platforms (joint table)..."
st_all = Station.all
st_all.each do |station|
  puts "Checking #{station.name_kanji} St. lines"
  station.lines_code.each do |line|
    new_platform = Platform.new()
    new_platform.station = station
    new_platform.line = Line.find_by(line_code: "#{line}")
    new_platform.save
    puts "Asocciation between #{station.name_kanji} St. and #{new_platform.line.name_kanji} created"
  end
end



