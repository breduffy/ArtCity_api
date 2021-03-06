class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :neighborhood
      t.string :street
      t.string :city
      t.text :description
      t.string :closing_date

      t.timestamps null: false
    end
  end
end
