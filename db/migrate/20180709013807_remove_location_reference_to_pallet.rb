class RemoveLocationReferenceToPallet < ActiveRecord::Migration[5.2]
  def change
    remove_reference :pallets, :location, index: true
  end
end
