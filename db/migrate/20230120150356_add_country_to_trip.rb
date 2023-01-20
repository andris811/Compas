class AddCountryToTrip < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :country, :string
  end
end
