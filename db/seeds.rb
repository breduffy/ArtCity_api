# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#this is a picture test
@file = Rack::Test::UploadedFile.new(Rails.root + 'cookie-monster.jpg', 'image/jpg')

Picture.create!(image: @file)

####Boston Artworks####
mfa = Venue.create!(name: 'Museum of Fine Arts', city: 'boston')
mfa.artworks.create!(title: 'Sculpture', artist: 'Some Artist', venue:'Museum of Fine Arts', neighborhood:'Fenway', city: 'Boston', description:'Some sculpture')


greenway = Venue.create!(name: 'Rose F. Kennedy Greenway', city: 'boston')
mfa.artworks.create!(title: 'Giant Floating Sculpture', artist: 'Janet Echelman', venue:'Rose F. Kennedy Greenway', neighborhood:'Financial District', city: 'Boston', description:'600-foot shimmering fiber sculpture made of polyethylene rope')


puts "created two artworks in Boston"
##how do I associate the artwork with a picture???


####New York Artworks
fivePoints = Venue.create!(name: 'Five Points', city: 'newyork')
fivePoints.artworks.create!(title: '', artist: 'various', venue:'Five Points', neighborhood:'Long Island City', city: 'New York', description:'Wall of graffitti')

puts "created an artwork in New York"

