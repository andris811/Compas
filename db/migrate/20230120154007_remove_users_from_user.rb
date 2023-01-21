class RemoveUsersFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :users, :string
  end
end
