class PalletAssignment < ApplicationRecord
  belongs_to :pallet
  belongs_to :location
  has_many :pallets
  has_many :locations

end
