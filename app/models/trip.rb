
class Trip < ApplicationRecord
  validates :trip_name, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 500 }
  validates :max_people,  presence: true, inclusion: { in: 1..100 }
  validate :activity_validator
  # validates :pets, presence: true
  validate :start_date_validator
  validate :end_date_validator
  # validates :photos, presence: true, length: {maximum: 5, minimum: 1}
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

  def activity_validator
    if activities.length > 5
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
