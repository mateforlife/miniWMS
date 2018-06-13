class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :passage, foreign_key: true
      t.references :slot, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
