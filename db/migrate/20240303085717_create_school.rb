class CreateSchool < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name, null: false, index: true, unique: true
      t.text :account_number, null: false, index: true, unique: true

      t.timestamps
    end
  end
end
