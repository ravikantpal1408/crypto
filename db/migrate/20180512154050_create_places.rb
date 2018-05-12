class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :cityid
      t.string :placename
      t.string :lat
      t.string :lon
      t.string :status

      t.timestamps null: false
    end
  end
end
