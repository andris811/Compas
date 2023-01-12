class CreateUserBoosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_boosts do |t|
      t.references :receiver, null: false, foreign_key: true
      t.references :sender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
