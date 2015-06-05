class VenueSerializer < ActiveModel::Serializer
  attributes :name, :street, :state, :zip, :id
  has_many :artworks
end
