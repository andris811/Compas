class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :trip_name
      t.integer :max_people
      t.text :description
      t.boolean :pets
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
