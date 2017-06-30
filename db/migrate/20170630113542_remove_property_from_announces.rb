class RemovePropertyFromAnnounces < ActiveRecord::Migration[5.0]
  def change
    remove_column :announces, :property, :string
  end
end
