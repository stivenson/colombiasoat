class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.references :type_document, foreign_key: true
      t.string :number_document
      t.string :names
      t.string :surnames
      t.string :phone
      t.references :rol, foreign_key: true

      t.timestamps
    end
  end
end
