class RemoveColumnsOfSubtype < ActiveRecord::Migration[5.0]
  def change
  	remove_column :subtype_vehicles, :commerial_rate
  	remove_column :subtype_vehicles, :fosyga
  	remove_column :subtype_vehicles, :subtotal
  	remove_column :subtype_vehicles, :rate_runt
  	remove_column :subtype_vehicles, :total_pay
  end
end
