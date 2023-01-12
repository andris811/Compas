class User < ApplicationRecord
  has_many :trip
  has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
