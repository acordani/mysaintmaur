class CreateAnnounces < ActiveRecord::Migration[5.0]
  def change
    create_table :announces do |t|
      t.string :title
      t.integer :bed
      t.integer :bath
      t.string :surface
      t.text :description
      t.integer :tax_month
      t.integer :price
      t.string :address
      t.string :locality
      t.string :class_energy
      t.string :transports
      t.string :view
      t.string :exposition
      t.string :floor
      t.string :floor_max
      t.boolean :elevator
      t.integer :user_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
