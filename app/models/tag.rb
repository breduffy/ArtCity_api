class Tag < ActiveRecord::Base
  #Do this to create a link between art and tag filters
  has_and_belongs_to_many :artworks
end
