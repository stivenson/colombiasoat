class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
    	t.integer :age
    	t.references :subtype_vehicle, foreign_key: true
    	t.references :user, foreign_key: true
	    t.integer :n_passengers
	    t.integer :cylinder
	    t.float :tonnes
      t.timestamps
    end
  end
end
