class AddExpirationToSoat < ActiveRecord::Migration[5.0]
  def change
  	add_column :soats, :expiration, :date
  end
end
