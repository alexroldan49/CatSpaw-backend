class AddPriceToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :price, :float
  end
end
