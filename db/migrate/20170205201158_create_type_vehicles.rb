class CreateTypeVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :type_vehicles do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
