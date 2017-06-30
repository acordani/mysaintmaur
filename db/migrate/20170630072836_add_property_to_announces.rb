class AddPropertyToAnnounces < ActiveRecord::Migration[5.0]
  def change
    add_column :announces, :property, :string
  end
end
