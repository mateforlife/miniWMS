class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :description
      t.string :client_code
      t.integer :innerpack
      t.string :ean13
      t.string :dun14
      t.string :aux_code

      t.timestamps
    end
  end
end
