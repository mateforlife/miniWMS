class RemoveColumnsAvailableLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :availiable
  end
end
