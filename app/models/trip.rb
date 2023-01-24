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
class Trip < ApplicationRecord
  validates :trip_name, presence: true
  validates :description, presence: true
  validates :max_people,  presence: true
  validates :activities, presence: true, length: { maximum: 4 }
  validates :pets, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :photos, presence: true
  validates :country, presence: true

  belongs_to :user
  has_many :messages
  has_many_attached :photos
  has_many :attendees

  def organizer
    return self.user
  end

end
