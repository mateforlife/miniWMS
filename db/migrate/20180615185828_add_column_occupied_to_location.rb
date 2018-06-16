class AddColumnOccupiedToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :available, :boolean
  end
end
