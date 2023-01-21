class ChangeTripImgInTrips < ActiveRecord::Migration[7.0]
  def change
    change_column(:trips, :trip_img, :string)
  end
end
