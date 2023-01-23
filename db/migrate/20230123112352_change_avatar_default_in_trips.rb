class ChangeAvatarDefaultInTrips < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :avatar, :string, default: "https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-user-avatar-placeholder-png-image_3918418.jpg")
  end
end
