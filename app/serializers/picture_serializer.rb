class PictureSerializer < ActiveModel::Serializer
  attributes :url

  def url
    "https://s3.amazonaws.com/bostonartgallery/medium/#{object.id}/#{object.image_file_name}"
  end
end
