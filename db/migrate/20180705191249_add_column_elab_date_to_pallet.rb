class AddColumnElabDateToPallet < ActiveRecord::Migration[5.2]
  def change
    add_column :pallets, :elab_date, :date
  end
end
