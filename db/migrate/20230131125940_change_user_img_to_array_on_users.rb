class ChangeUserImgToArrayOnUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :user_img, :string
    add_column :users, :user_img, :string, array: true, default: []
  end
end
