# == Schema Information
#
# Table name: trips
#
#  id          :bigint           not null, primary key
#  activities  :string           default([]), is an Array
#  country     :string
#  description :text
#  end_date    :date
#  location    :string
#  max_people  :integer
#  pets        :boolean          default(TRUE)
#  start_date  :date
#  trip_img    :string           default("{}")
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
