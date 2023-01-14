# == Schema Information
#
# Table name: users
#
#  id                             :bigint           not null, primary key
#  dob                            :date
#  email                          :string           default(""), not null
#  emergency_contact_name         :string
#  emergency_contact_phone_number :string
#  encrypted_password             :string           default(""), not null
#  first_name                     :string
#  last_name                      :string
#  phone_number                   :string
#  remember_created_at            :datetime
#  reset_password_sent_at         :datetime
#  reset_password_token           :string
#  users                          :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  has_many :trip
  has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
