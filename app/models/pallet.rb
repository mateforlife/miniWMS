class Pallet < ApplicationRecord
  belongs_to :reception
  belongs_to :location
  belongs_to :product
  validates :pallet_number, uniqueness: true

  enum status: %i[available retained]
end
