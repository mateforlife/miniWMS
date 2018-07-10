class PalletLocation < ApplicationRecord
  belongs_to :pallet
  belongs_to :location

end
