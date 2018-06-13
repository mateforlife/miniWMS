class AddColumnToOperation < ActiveRecord::Migration[5.2]
  def change
    add_column :operations, :name, :string
  end
end
