class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :amount, null: false
      t.references :school, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
