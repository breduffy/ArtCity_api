class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.text :interests

      t.timestamps null: false
    end
  end
end
