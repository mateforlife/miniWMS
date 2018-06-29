class Pallet < ApplicationRecord
  belongs_to :reception
  belongs_to :location
  belongs_to :product
  validates :pallet_number, uniqueness: true
  validates :location_id, presence: true

  enum status: %i[available retained]
end
