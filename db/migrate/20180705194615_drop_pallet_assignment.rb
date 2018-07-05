class DropPalletAssignment < ActiveRecord::Migration[5.2]
  def change
    drop_table :pallet_assignments
  end
end
