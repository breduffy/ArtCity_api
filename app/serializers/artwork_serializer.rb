class ArtworkSerializer < ActiveModel::Serializer
  attributes :url, :title, :city, :description, :neighborhood, :artist

  def url
    "https://s3.amazonaws.com/bostonartgallery/artworks/medium/#{object.id}/#{object.image_file_name}"
  end
end
