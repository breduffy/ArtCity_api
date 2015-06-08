# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Destroy all so don't get duplicates when seeding

#Add tags to artwork
public = Tag.new(name: 'public')
museum = Tag.new(name: 'museums')
graffiti = Tag.new(name: 'graffiti')
architecture = Tag.new(name: 'architecture')
gallery = Tag.new(name: 'galleries')
historic = Tag.new(name: 'historic')
salons = Tag.new(name: 'salons')
painting = Tag.new(name: 'painting')
printmaking = Tag.new(name: 'printmaking')
performance = Tag.new(name: 'performance')
sculpture = Tag.new(name: 'sculpture')
modern = Tag.new(name: 'modern')
contemporary = Tag.new(name: 'contemporary')


#FIXME: TO DO: Get rid of overlap between city, venue etc in parameters



####Images all need to be created at the top(before the art object) or else won't get put into the object!
##### All images

####Boston Art Images######
#Create image for floating sculpture
@floatingSculpture = Rack::Test::UploadedFile.new(Rails.root + 'floatingSculpture_boston.png', 'image/png')
Picture.create!(image: @floatingSculpture)

#Create image for El Grecco
@frayGreco = Rack::Test::UploadedFile.new(Rails.root + 'fray_greco.jpg', 'image/jpg')
Picture.create!(image: @frayGreco)

#Create Edgar Allan Poe Statue
@poe_boston = Rack::Test::UploadedFile.new(Rails.root + 'poe_boston.jpg', 'image/jpg')
Picture.create!(image: @poe_boston)

#Create image for Frank Gehry Stata Building
@gehry_boston = Rack::Test::UploadedFile.new(Rails.root + 'gehry_boston.jpg', 'image/jpg')
Picture.create!(image: @gehry_boston)


####New York Images##############

#Four Arches
@fivePointzArtwork = Rack::Test::UploadedFile.new(Rails.root + '5pointz_newyork.jpg', 'image/jpg')
Picture.create!(image: @fivePointzArtwork)

@love = Rack::Test::UploadedFile.new(Rails.root + 'love_nyc.jpg', 'image/jpg')
Picture.create!(image: @love)

@zodiac = Rack::Test::UploadedFile.new(Rails.root + 'zodiac_newyork.jpg', 'image/jpg')
Picture.create!(image: @zodiac)


####Chicago Images###############

#nighthawks
@nighthawks = Rack::Test::UploadedFile.new(Rails.root + 'nighthawks_chicago.jpg', 'image/jpg')
Picture.create!(image: @nighthawks)

@bean = Rack::Test::UploadedFile.new(Rails.root + 'cloudGate_chicago.jpg', 'image/jpg')
Picture.create!(image: @bean)

@americanGothic = Rack::Test::UploadedFile.new(Rails.root + 'americanGothic_chicago.jpg', 'image/jpg')
Picture.create!(image: @americanGothic)


####Los Angeles Images#############

#Four Arches
@fourArches = Rack::Test::UploadedFile.new(Rails.root + 'fourArches_losangeles.jpg', 'image/jpg')
Picture.create!(image: @fourArches)

@risk = Rack::Test::UploadedFile.new(Rails.root + 'risk_losangeles.jpg', 'image/jpg')
Picture.create!(image: @risk)

@urbanLight = Rack::Test::UploadedFile.new(Rails.root + 'urbanLight_losangeles.png', 'image/png')
Picture.create!(image: @urbanLight)






####Boston Artworks####
mfa = Venue.create!(name: 'Museum of Fine Arts', city: 'boston')

greco = mfa.artworks.create!(title: 'Fray Hortensio Felix Paravicino', artist: 'El Greco', neighborhood:'Fenway', city: 'Boston', description:'oil paint on canvas', image: @frayGreco)

greenway = Venue.create!(name: 'Rose F. Kennedy Greenway', city: 'boston')
float = greenway.artworks.create!(title: 'Giant Floating Sculpture', artist: 'Janet Echelman', neighborhood:'Financial District', city: 'Boston', description:'600-foot shimmering fiber sculpture made of polyethylene rope', image: @floatingSculpture)

bostonCommon = Venue.create!(name: 'Boston Common', city: 'boston')
poe = bostonCommon.artworks.create!(title: 'Edgar Allan Poe', artist: 'Stefanie Rocknak', neighborhood:'Back Bay', city: 'Boston', description:'Bronze Scuplutre', image: @poe_boston)

cambridge = Venue.create!(name: 'cambridge', city: 'boston')
gehry = cambridge.artworks.create!(title: 'Stata Center', artist: 'Frank Gehry', neighborhood:'Cambridge', city: 'Boston', description:'Deconstructionist Architecture', image: @gehry_boston)

puts "created three artworks in Boston"




########### Boston Art tags
greco.tags << museum
greco.tags << painting
greco.tags << historic

float.tags << public
float.tags << sculpture
float.tags << contemporary

poe.tags << sculpture
poe.tags << public

gehry.tags << architecture
gehry.tags << contemporary







####New York Artworks
fivePointz = Venue.create!(name: 'Five Pointz', city: 'newyork')
fivePointzArtwork = fivePointz.artworks.create!(title: 'Five Pointz', artist: 'various', neighborhood:'Long Island City', city: 'newyork', description:'Wall of graffitti', image: @fivePointzArtwork)

manhattan = Venue.create!(name: 'Manhattan', city: 'newyork')
love = manhattan.artworks.create!(title: 'Love NYC', artist: 'Robert Indiana', neighborhood:'Manhattan', city: 'newyork', description:'Love sculpture', image: @love)

centralPark = Venue.create!(name: 'Central Park, Manhattan', city: 'newyork')
zodiac = centralPark.artworks.create!(title: 'Circle of Friends/Zodiac Heads', artist: 'Ai Weiwei', neighborhood:'Central Park, Manhattan', city: 'newyork', description:'Public art installation of zodiac heads. Scary, but cool.', image: @zodiac)


puts "created an artwork in New York"


#New York Art Tags
fivePointzArtwork.tags << graffiti
fivePointzArtwork.tags << public
fivePointzArtwork.tags << contemporary

love.tags << public
love.tags << modern
love.tags << sculpture

zodiac.tags << public
zodiac.tags << sculpture
zodiac.tags << contemporary



####Chicago Artworks
artInstitute = Venue.create!(name: 'Art Institute of Chicago', city: 'chicago')
nighthawks = artInstitute.artworks.create!(title: 'Nighthawks', artist: 'Edward Hopper', neighborhood: 'Loop', city: 'chicago', description: 'Really awesome painting', image: @nighthawks)

americanGothic = artInstitute.artworks.create!(title: 'American Gothic', artist: 'Grant Wood', neighborhood: 'Loop', city: 'chicago', description: 'Oil on Beaver Board. Iconic American Masterpeice.', image: @americanGothic)

millenniumPark = Venue.create!(name: 'Millennium Park', city: 'chicago')
bean = millenniumPark.artworks.create!(title: 'Cloud Gate', artist: 'Anish Kapoor', neighborhood: 'Loop', city: 'chicago', description: 'The Bean', image: @bean)





#####Chicago Art Tags
nighthawks.tags << painting
nighthawks.tags << historic
nighthawks.tags << museum

bean.tags << public
bean.tags << sculpture
bean.tags << modern

americanGothic.tags << museum
americanGothic.tags << painting
americanGothic.tags << historic





####Los Angeles Artworks
pacificTower = Venue.create!(name:'Security Pacific Tower', city: 'losangeles')
fourArches = pacificTower.artworks.create!(title: 'Four Arches', artist: 'Alexander Calder', neighborhood: '', city: 'losangeles', description: 'Painted steel sculpture', image: @fourArches )

someWall = Venue.create!(name:'Some Wall in Los Angeles', city: 'losangeles')
risk = someWall.artworks.create!(title: 'Risk', artist: 'unknown', neighborhood: '', city: 'losangeles', description: 'Painted Mural/Graffiti', image: @risk )

lacma = Venue.create!(name:'Los Angeles Museum of Modern Art', city: 'losangeles')
urbanLight = lacma.artworks.create!(title: 'Urban Light', artist: 'Chris Burden', neighborhood: '', city: 'losangeles', description: 'Public Art/Installation', image: @urbanLight )

####Los Angeles Art Tags
fourArches.tags << sculpture
fourArches.tags << modern
fourArches.tags << public

risk.tags << graffiti
risk.tags << painting
risk.tags << public

urbanLight.tags << public
urbanLight.tags << museum
urbanLight.tags << sculpture
urbanLight.tags << contemporary


# only tags that are currently working are historic and salons.

