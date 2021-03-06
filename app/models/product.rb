class Product < ApplicationRecord
  has_many :locations
  has_many :pallets

  validates_presence_of :client_id, :code, :description, :client_code, :innerpack, :ean13, :dun14, :aux_code, :layer, :layer_qty
  validates_uniqueness_of :code, :description, :client_code, :ean13

  def code_description
    "#{code} - #{description}"
  end
end
