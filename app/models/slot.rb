class Slot < ApplicationRecord
  has_many :locations
  validates :number, presence: :true
end
