class ChangeActivitiesInTrips < ActiveRecord::Migration[7.0]
  def change
    remove_column :trips, :activities, :string
    add_column :trips, :activities, :string, array: true, default: []
  end
end
