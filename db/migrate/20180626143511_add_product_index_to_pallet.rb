class AddProductIndexToPallet < ActiveRecord::Migration[5.2]
  def change
    add_reference :pallets, :product, foreign_key: true
  end
end
