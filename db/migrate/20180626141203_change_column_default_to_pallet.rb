class ChangeColumnDefaultToPallet < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:pallets, :status, 0)
  end
end
