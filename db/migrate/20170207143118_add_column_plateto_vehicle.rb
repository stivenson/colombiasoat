class AddColumnPlatetoVehicle < ActiveRecord::Migration[5.0]
  def change
  	add_column :vehicles,:plate,:string
  end
end
