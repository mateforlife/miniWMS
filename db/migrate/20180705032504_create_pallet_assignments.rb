class CreatePalletAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :pallet_assignments do |t|
      t.references :pallet, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
