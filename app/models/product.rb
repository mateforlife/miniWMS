class Product < ApplicationRecord
  has_many :locations
  has_many :pallets


  def code_description
    "#{code} - #{description}"
  end
end
