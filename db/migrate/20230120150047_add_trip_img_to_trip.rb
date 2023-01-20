class AddTripImgToTrip < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :trip_img, :string, array: true, default: []
  end
end
