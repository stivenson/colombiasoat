class CreateSoats < ActiveRecord::Migration[5.0]
  def change
    create_table :soats do |t|
      t.string :number_cart
      t.string :holder_cart
      t.date :date_end_cart
      t.integer :code_card
      t.integer :number_quotas
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
