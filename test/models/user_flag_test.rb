# == Schema Information
#
# Table name: user_flags
#
#  id          :bigint           not null, primary key
#  comment     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  receiver_id :bigint           not null
#  sender_id   :bigint           not null
#
# Indexes
#
#  index_user_flags_on_receiver_id  (receiver_id)
#  index_user_flags_on_sender_id    (sender_id)
#
# Foreign Keys
#
#  fk_rails_...  (receiver_id => users.id)
#  fk_rails_...  (sender_id => users.id)
#
require "test_helper"

class UserFlagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
