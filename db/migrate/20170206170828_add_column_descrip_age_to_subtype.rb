class AddColumnDescripAgeToSubtype < ActiveRecord::Migration[5.0]
	def change
		add_column :subtype_vehicles, :description_age, :string  
	end
end
