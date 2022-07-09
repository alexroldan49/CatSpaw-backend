class AddStartTimeToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :start_time, :time
  end
end
