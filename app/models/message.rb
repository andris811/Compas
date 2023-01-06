# == Schema Information
#
# Table name: messages
#
#  id         :bigint           not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  trip_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_messages_on_trip_id  (trip_id)
#  index_messages_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (trip_id => trips.id)
#  fk_rails_...  (user_id => users.id)
#
class Message < ApplicationRecord
    belongs_to :trip
    belongs_to :user
            
end
