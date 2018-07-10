class AddColumnsBaseLayerToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :layer, :integer
    add_column :products, :layer_qty, :integer
  end
end
