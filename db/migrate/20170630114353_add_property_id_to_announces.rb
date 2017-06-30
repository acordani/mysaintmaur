class AddPropertyIdToAnnounces < ActiveRecord::Migration[5.0]
  def change
    add_column :announces, :property_id, :integer
  end
end
