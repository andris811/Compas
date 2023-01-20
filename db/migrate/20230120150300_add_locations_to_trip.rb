class AddLocationsToTrip < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :location, :string
  end
end
