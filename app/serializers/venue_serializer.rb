class VenueSerializer < ActiveModel::Serializer
  attributes :name, :street, :state, :zip
  has_many :artworks
end
