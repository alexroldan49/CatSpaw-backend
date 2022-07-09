class AddEndTimeToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :end_time, :time
  end
end
