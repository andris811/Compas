# == Schema Information
#
# Table name: users
#
#  id                             :bigint           not null, primary key
#  avatar                         :string           default("https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-user-avatar-placeholder-png-image_3918418.jpg")
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
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
