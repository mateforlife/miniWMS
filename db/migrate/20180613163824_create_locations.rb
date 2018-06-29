class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :passage
      t.integer :slot
      t.integer :level
      t.boolean :available

      t.timestamps
    end
  end
end
