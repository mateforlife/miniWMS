class ChangeDefaultAvailableLocation < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:locations, :available, true)
  end
end
