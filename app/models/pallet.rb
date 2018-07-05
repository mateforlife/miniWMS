class Pallet < ApplicationRecord
  belongs_to :reception
  belongs_to :location
  belongs_to :product
  validates :pallet_number, uniqueness: true
  validates_presence_of :reception_id, :pallet_number, :location_id, :product_id, :origin_qty, on: :create

  enum status: %i[available retained]
end
