class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :treatment
      t.integer :duration
      t.float :price
      t.belongs_to :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
