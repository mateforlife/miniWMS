class CreateReceptions < ActiveRecord::Migration[5.2]
  def change
    create_table :receptions do |t|
      t.references :scheduling, foreign_key: true
      t.string :document_number
      t.string :origin_place
      t.string :vehicle_patent
      t.string :reference_text
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
