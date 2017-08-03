class AddIsGeolocToAnnounces < ActiveRecord::Migration[5.0]
  def change
    add_column :announces, :isgeoloc, :boolean
  end
end
