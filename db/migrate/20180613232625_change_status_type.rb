class ChangeStatusType < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedulings, :status
    add_column :schedulings, :status, :integer
  end
end
