require_relative '../config/environment.rb'


bob = Artist.new("Bob Ross", 35)
jeff = Artist.new("Jeff", 10)
toby = Artist.new("Toby", 20)

nyc_gallery = Gallery.new("NYC Gallery", "New York City")
austin_gallery = Gallery.new("Austin Gallery", "Austin")

bird = Painting.new("Bird", 400, bob)
tree = Painting.new("Tree", 600, jeff)
house = Painting.new("House", 500, bob)
fish = Painting.new("Fish", 300, bob)
turtle = Painting.new("Turtle", 800, jeff)

bird.gallery = nyc_gallery
tree.gallery = nyc_gallery
house.gallery = austin_gallery
fish.gallery = nyc_gallery


binding.pry

puts "Bob Ross rules."
