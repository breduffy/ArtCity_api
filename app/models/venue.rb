class Venue < ActiveRecord::Base
  has_many :artworks, dependent: :destroy
end
