class CreatePallets < ActiveRecord::Migration[5.2]
  def change
    create_table :pallets do |t|
      t.references :reception, foreign_key: true
      t.string :pallet_number
      t.references :location, foreign_key: true
      t.integer :origin_qty
      t.integer :reserved_qty
      t.integer :available_qty
      t.date :exp_date
      t.string :batch
      t.integer :status

      t.timestamps
    end
  end
end
