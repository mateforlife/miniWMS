class CreateDoors < ActiveRecord::Migration[5.2]
  def change
    create_table :doors do |t|
      t.integer :number

      t.timestamps
    end
  end
end
