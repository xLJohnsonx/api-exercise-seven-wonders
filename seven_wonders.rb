require 'httparty'
require 'awesome_print'

# get my key from top secret file
my_key = File.open('GoogleAPIKEY.txt').read

# arr of 7 wonders
seven_wonders = ["Great Pyramid of Giza", "Hanging Gardens of Babylon", "Colossus of Rhodes", "Pharos of Alexandria", "Statue of Zeus at Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus"]
# new empty hash
seven_wonders_hash = {}

seven_wonders.each do |wonder|
  response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{wonder}&key=#{my_key}
")
  # ap JSON.parse(response.body)
  # loop through response results to get geocodes for each location
  response["results"].each do |result|
    ap wonder
    lat = result["geometry"]["location"]["lat"]
    ap lat

    lng = result["geometry"]["location"]["lng"]
    ap lng
    puts "***"

    seven_wonders_hash[wonder] = {"lat" => lat, "lng" => lng}
  end
end

ap seven_wonders_hash






#Example Output:
#{"Great Pyramind of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>32.5422374, "lng"=>44.42103609999999}, "Colossus of Rhodes"=>{"lat"=>36.45106560000001, "lng"=>28.2258333}, "Pharos of Alexandria"=>{"lat"=>38.7904054, "lng"=>-77.040581}, "Statue of Zeus at Olympia"=>{"lat"=>37.6379375, "lng"=>21.6302601}, "Temple of Artemis"=>{"lat"=>37.9498715, "lng"=>27.3633807}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}
