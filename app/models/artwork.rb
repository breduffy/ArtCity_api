class Artwork < ActiveRecord::Base
  has_many :pictures
  has_many :tags
end
