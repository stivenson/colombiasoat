class MoveColumnTypetoSubTypeVehicle < ActiveRecord::Migration[5.0]
	def change
		remove_column :type_vehicles, :code
  		add_column :subtype_vehicles, :code, :integer
	end
end
