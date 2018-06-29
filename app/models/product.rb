class Product < ApplicationRecord
  has_many :locations
  has_many :pallets

  validates :client_id, presence: true
  validates :code, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :client_code, presence: true, uniqueness: true
  validates :innerpack, presence: true
  validates :ean13, presence: true, uniqueness: true
  validates :dun14, presence: true
  validates :aux_code, presence: true

  def code_description
    "#{code} - #{description}"
  end
end
