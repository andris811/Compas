# == Schema Information
#
# Table name: user_answers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  answer_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_answers_on_answer_id  (answer_id)
#  index_user_answers_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_id => answers.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class UserAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
