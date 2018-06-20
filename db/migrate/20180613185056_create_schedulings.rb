class CreateSchedulings < ActiveRecord::Migration[5.2]
  def change
    create_table :schedulings do |t|
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true
      t.references :operation, foreign_key: true
      t.string :observation
      t.integer :pallets_qty
      t.datetime :date
      t.references :door, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
