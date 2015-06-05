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

#FIXME: TO DO: Get rid of overlap between city, venue etc in parameters

####Boston Artworks####
mfa = Venue.create!(name: 'Museum of Fine Arts', city: 'boston')
mfa.artworks.create!(title: 'Fray Hortensio Felix Paravicino', artist: 'El Greco', neighborhood:'Fenway', city: 'Boston', description:'oil paint on canvas')


greenway = Venue.create!(name: 'Rose F. Kennedy Greenway', city: 'boston')
mfa.artworks.create!(title: 'Giant Floating Sculpture', artist: 'Janet Echelman', neighborhood:'Financial District', city: 'Boston', description:'600-foot shimmering fiber sculpture made of polyethylene rope')


puts "created two artworks in Boston"
##how do I associate the artwork with a picture???


####New York Artworks
fivePointz = Venue.create!(name: 'Five Pointz', city: 'newyork')
fivePointz.artworks.create!(title: '', artist: 'various', neighborhood:'Long Island City', city: 'newyork', description:'Wall of graffitti')

puts "created an artwork in New York"


####Chicago Artworks
artInstitute = Venue.create!(name: 'Art Institute of Chicago', city: 'chicago')
artInstitute.artworks.create!(title: 'Nighthawks', artist: 'Edward Hopper', neighborhood: 'Loop', description: 'Really awesome painting')


####Los Angeles Artworks
pacificTower = Venue.create!(name:'Security Pacific Tower', city: 'Los Angeles')
pacificTower.artworks.create!(title: 'Four Arches', artist: 'Alexander Calder', neighborhood: '', description: 'Painted steel sculpture' )



#only tags that are currently working are historic and salons.

