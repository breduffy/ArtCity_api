class AddVenueIdToArtworks < ActiveRecord::Migration
  def change
    add_reference :artworks, :venue, index: true, foreign_key: true
  end
end
