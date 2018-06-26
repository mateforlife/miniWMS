class ChangeDefaulStatusToReception < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:receptions, :status, 0)
  end
end
