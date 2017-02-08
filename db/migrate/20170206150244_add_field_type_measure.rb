class AddFieldTypeMeasure < ActiveRecord::Migration[5.0]
	def change
		add_column :subtype_vehicles, :type_measure, :string
	end
end
