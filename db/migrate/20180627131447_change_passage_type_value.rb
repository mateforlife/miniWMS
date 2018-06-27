class ChangePassageTypeValue < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :passage, :integer
    add_column :locations, :passage, :string
  end
end
