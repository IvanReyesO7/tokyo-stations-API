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

puts "Deleting all the existing lines..."
Line.destroy_all

tokyo_lines.map { |line| line.gsub!("."," ") }
tokyo_lines.each do |line|
  puts "Creating #{line} line..."
  new_line = Line.new(name: "#{line} line")
  new_line.save
  puts "#{line} line created!"
end

