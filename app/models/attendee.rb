# == Schema Information
#
# Table name: attendees
#
#  id         :bigint           not null, primary key
#  approved   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trip_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_attendees_on_trip_id  (trip_id)
#  index_attendees_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (trip_id => trips.id)
#  fk_rails_...  (user_id => users.id)
#
class Attendee < ApplicationRecord
    belongs_to :trip
    belongs_to :user

    attr_accessor :attendees

end
