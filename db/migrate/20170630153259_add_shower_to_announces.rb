class AddShowerToAnnounces < ActiveRecord::Migration[5.0]
  def change
    add_column :announces, :shower, :integer
  end
end
