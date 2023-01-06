# == Schema Information
#
# Table name: trips
#
#  id          :bigint           not null, primary key
#  description :text
#  end_date    :date
#  max_people  :integer
#  pets        :boolean
#  start_date  :date
#  trip_name   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_trips_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
