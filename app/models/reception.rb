class Reception < ApplicationRecord
  belongs_to :scheduling
  belongs_to :user
  has_many :pallets
  validates_presence_of :scheduling_id, :document_number, :origin_place, :vehicle_patent, :reference_text
  validates :document_number, uniqueness: true
end
