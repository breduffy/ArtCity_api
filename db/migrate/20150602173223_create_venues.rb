class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :neighborhood
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
