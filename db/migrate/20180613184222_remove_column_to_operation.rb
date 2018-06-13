class RemoveColumnToOperation < ActiveRecord::Migration[5.2]
  remove_column :operations, :type
end
