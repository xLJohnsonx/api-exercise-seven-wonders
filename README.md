# API Exercise: Seven Wonders of the World

You are planning a trip to see all seven wonders of the world! How exciting! And now you need to plan your trip, using the coordinates of all seven wonders. Being a developer, why do this yourself when you can have a computer do it for you?!  

Using the list of all the wonders, make a collection of all their coordinates using httparty and Google Map's API.

**Use this:**
```ruby
seven_wonders = ["Great Pyramind of Giza", "Hanging Gardens of Babylon", "Colossus of Rhodes", "Lighthouse of Alexandria", "Statue of Zeus at Olympia", "Temple of Artemis", "Mausoleum at Halicarnassus"]
```

**To Generate this:**
```ruby
{"Great Pyramind of Giza"=>{"lat"=>29.9792345, "lng"=>31.1342019}, "Hanging Gardens of Babylon"=>{"lat"=>32.5422374, "lng"=>44.42103609999999}, "Colossus of Rhodes"=>{"lat"=>36.45106560000001, "lng"=>28.2258333}, "Lighthouse of Alexandria"=>{"lat"=>38.7904054, "lng"=>-77.040581}, "Statue of Zeus at Olympia"=>{"lat"=>37.6379375, "lng"=>21.6302601}, "Temple of Artemis"=>{"lat"=>37.9498715, "lng"=>27.3633807}, "Mausoleum at Halicarnassus"=>{"lat"=>37.038132, "lng"=>27.4243849}}
```

The first part of this challenge will be that Google’s api for maps is rather large. How will you find the very specific api request needed to obtain the necessary data, based only on the information provided in the seven_wonders array?  Hint: There is a way to do it without a key, but do whatever way you find that works.

The second part will be understanding how to interact with the response data to target the specific parts needed to get the result we want.

**Instructions:**
- Fork and clone this repository.
- Open the provided ruby file, `seven_wonders.rb`.
- Use your developer skills to adventure through Google searches and the Google Map's API documentation to find the appropriate HTTP URL needed to generate the expected outcome.

Safe travels!
