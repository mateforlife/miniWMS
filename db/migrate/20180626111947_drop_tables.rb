class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :pallets
    drop_table :receptions
  end
end
