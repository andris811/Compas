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
  validates :description, presence: true, length: { minimum: 20, maximum: 500 }
  validates :max_people,  presence: true, inclusion: { in: 1..100, message: 'Max number of people = 100' }
  validate :activity_validator
  # validates :pets, presence: true
  # validate :start_date_validator
  validate :end_date_validator
  # validate :photo_validator
  validates :country, presence: true

  belongs_to :user
  has_many :messages
  has_many_attached :photos
  has_many :attendees
  has_many :users, through: :attendees

  def organizer
    return self.user
  end

  def self.search_by_name(search)
    self.where('trip_name ILIKE ? OR country ILIKE ? OR description ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def activity_validator
    if activities.length > 4
      errors.add(:activities, "Please only choose 4 tags")
    end
  end

  def start_date_validator
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "Cant be in the past")
    end
  end

  def end_date_validator
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "Date can't be before start date! Choose a new date")
    end
  end

end
