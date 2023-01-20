class AddActivitiesToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :activities, :string
  end
end
