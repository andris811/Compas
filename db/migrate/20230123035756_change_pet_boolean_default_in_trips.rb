class ChangePetBooleanDefaultInTrips < ActiveRecord::Migration[7.0]
  def change
    change_column(:trips, :pets, :boolean, default: true)
  end
end
