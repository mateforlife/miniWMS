class Level < ApplicationRecord
  has_many :locations
  validates :number, presence: :true
end
