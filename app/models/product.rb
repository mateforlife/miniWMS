class Product < ApplicationRecord
  has_many :locations

  def code_description
    "#{code} - #{description}"
  end  
end
