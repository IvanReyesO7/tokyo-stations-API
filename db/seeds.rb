require 'json'
require 'open-uri'
require 'nokogiri'

url = 'https://raw.githubusercontent.com/piuccio/open-data-jp-railway-stations/master/stations.json'
user_serialized = open(url).read
# in this json we have a list of several stations all over Japan, we only need Tokyo for this project
tokyo_stations = JSON.parse(user_serialized).select{ |station| station["prefecture"] == "13" }
#Create an array of existing lines
# tokyo_lines = []
# tokyo_stations.each do |station|
#   station["line_codes"].each do |line|
#     tokyo_lines << line if !tokyo_lines.include?(line)
#   end
# end
# # Creation of lines
# puts "Deleting all the existing lines..."
# Line.destroy_all

# tokyo_lines.each do |line|
#   puts "Creating #{line} line..."
#   new_line = Line.new(
#     name: "#{line.gsub("."," ")} line",
#     line_code: "#{line}"
#   )
#   new_line.save
#   puts "#{new_line.name} line created!"
# end

# Creation of stations


url = "https://ja.wikipedia.org/wiki/三ノ輪駅"
begin
html_file = open(url).read
rescue URI::InvalidURIError
  url = URI.parse(URI.escape(url))
end
html_doc = Nokogiri::HTML(html_file)
html_doc.search('.infobox bordered').each do |element|
  puts element.text.strip
  puts element.attribute('href').value

end


