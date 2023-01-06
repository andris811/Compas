class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :users, :string
    add_column :users, :phone_number, :string
    add_column :users, :dob, :date
    add_column :users, :emergency_contact_name, :string
    add_column :users, :emergency_contact_phone_number, :string
  end
end
