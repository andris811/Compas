class UserBoost < ApplicationRecord
    belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id', reiquired: true
    belongs_to :sender, class_name: 'User', foreign_key: 'sender_id', reiquired: true

end
