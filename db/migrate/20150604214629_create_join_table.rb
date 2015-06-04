class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :tags, :artworks do |t|
      # t.index [:tag_id, :artwork_id]
      # t.index [:artwork_id, :tag_id]
    end
  end
end
