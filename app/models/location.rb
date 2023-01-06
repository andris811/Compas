# == Schema Information
#
# Table name: locations
#
#  id          :bigint           not null, primary key
#  description :text
#  end_date    :date
#  name        :string
#  start_date  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  trip_id     :bigint           not null
#
# Indexes
#
#  index_locations_on_trip_id  (trip_id)
#
# Foreign Keys
#
#  fk_rails_...  (trip_id => trips.id)
#
class Location < ApplicationRecord
    belongs_to :trip
            
end
