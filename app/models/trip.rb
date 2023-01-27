
class Trip < ApplicationRecord
  validates :trip_name, presence: true
  validates :description, presence: true
  validates :max_people,  presence: true
  validates :validate_activities, presence: true
  # validates :pets, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :photos, presence: true
  validates :country, presence: true

  belongs_to :user
  has_many :messages
  has_many_attached :photos
  has_many :attendees

  def organizer
    return self.user
  end

  def self.search(search)\
    where("trip_name ILIKE ? OR country ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
