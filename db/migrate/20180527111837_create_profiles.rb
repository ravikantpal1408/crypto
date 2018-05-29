class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :uid
      t.string :name
      t.string :carnumber
      t.string :brand
      t.string :color

      t.timestamps null: false
    end
  end
end
