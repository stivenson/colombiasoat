class CreateSubtypeVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :subtype_vehicles do |t|
      t.float :commerial_rate
      t.float :prima
      t.float :fosyga
      t.float :subtotal
      t.float :rate_runt
      t.float :total_pay
      t.string :description
      t.references :type_vehicle, foreign_key: true

      t.timestamps
    end
  end
end
