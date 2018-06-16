class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:schedulings, :status, 0)
  end
end
