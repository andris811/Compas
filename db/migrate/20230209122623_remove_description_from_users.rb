class RemoveDescriptionFromUsers < ActiveRecord::Migration[7.0]
  def change
      remove_column :users, :description
      add_column :users, :description, :text, default: ''
  end
end
