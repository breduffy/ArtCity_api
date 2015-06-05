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

#Create iamge for floating sculpture
@floatingSculpture = Rack::Test::UploadedFile.new(Rails.root + 'floatingSculpture_boston.png', 'image/png')
Picture.create!(image: @floatingSculpture)

#Create image for El Grecco
@frayGreco = Rack::Test::UploadedFile.new(Rails.root + 'fray_greco.jpg', 'image/jpg')
Picture.create!(image: @frayGreco)

#Create Edgar Allan Poe Statue
@poe_boston = Rack::Test::UploadedFile.new(Rails.root + 'poe_boston.jpg', 'image/jpg')
Picture.create!(image: @poe_boston)



#FIXME: TO DO: Get rid of overlap between city, venue etc in parameters

####Boston Artworks####
mfa = Venue.create!(name: 'Museum of Fine Arts', city: 'boston')

greco = mfa.artworks.create!(title: 'Fray Hortensio Felix Paravicino', artist: 'El Greco', neighborhood:'Fenway', city: 'Boston', description:'oil paint on canvas', image: @frayGreco)

# greco.tags.create!(name: 'museums')
# greco.tags.create!(name: 'painting')
# greco.tags.create!(name: 'historic')



greenway = Venue.create!(name: 'Rose F. Kennedy Greenway', city: 'boston')
float = greenway.artworks.create!(title: 'Giant Floating Sculpture', artist: 'Janet Echelman', neighborhood:'Financial District', city: 'Boston', description:'600-foot shimmering fiber sculpture made of polyethylene rope', image: @floatingSculpture)

bostonCommon = Venue.create!(name: 'Boston Common', city: 'boston')
poe = bostonCommon.artworks.create!(title: 'Edgar Allan Poe', artist: 'Stefanie Rocknak', neighborhood:'Back Bay', city: 'Boston', description:'Bronze Scuplutre', image: @poe_boston)

puts "created three artworks in Boston"


# ['public', 'museums', 'graffiti', 'architecture', 'galleries'].each do |tag_name|

# end
#Add tags to artwork
public = Tag.new(name: 'public')
museums = Tag.new(name: 'museums')
graph = Tag.new(name: 'graffiti')
arch = Tag.new(name: 'architecture')
gall = Tag.new(name: 'galleries')
his = Tag.new(name: 'historic')
# Tag.new('salons')
# Tag.new('painting')
# Tag.new('printmaking')
# Tag.new('performance')
sculp = Tag.new(name: 'sculpture')
# Tag.new('modern')
# Tag.new('contemporary')

# adding greco tags
greco.tags << public
greco.tags << sculp

float.tags << public
float.tags << sculp





####New York Artworks
fivePointz = Venue.create!(name: 'Five Pointz', city: 'newyork')
fivePointz.artworks.create!(title: 'Five Pointz', artist: 'various', neighborhood:'Long Island City', city: 'newyork', description:'Wall of graffitti')

puts "created an artwork in New York"


####Chicago Artworks
artInstitute = Venue.create!(name: 'Art Institute of Chicago', city: 'chicago')
artInstitute.artworks.create!(title: 'Nighthawks', artist: 'Edward Hopper', neighborhood: 'Loop', city: 'chicago', description: 'Really awesome painting')

millenniumPark = Venue.create!(name: 'Millennium Park', city: 'chicago')
millenniumPark.artworks.create!(title: 'Cloud Gate', artist: 'Anish Kapoor', neighborhood: 'Loop', city: 'chicago', description: 'The Bean.')


####Los Angeles Artworks
pacificTower = Venue.create!(name:'Security Pacific Tower', city: 'Los Angeles')
pacificTower.artworks.create!(title: 'Four Arches', artist: 'Alexander Calder', neighborhood: '', city: 'losandeles', description: 'Painted steel sculpture' )



#only tags that are currently working are historic and salons.

