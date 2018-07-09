class RemoveLocationReferenceToPallet < ActiveRecord::Migration[5.2]
  def change
    remove_reference :pallet, location, index: true
  end
end
