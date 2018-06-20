class ChangeLocationReferencesToProductLocationReferences < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :location
  end
end
