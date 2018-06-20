class Asdasdasasd < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :product_location
  end
end
