class Location < ApplicationRecord
  has_many :pallet_locations
  has_many :pallets, through: :pallet_locations
  belongs_to :product, required: false
  validate :unique_combination, on: :create
  validates_presence_of :passage, :slot, :level, on: :create

  def set_pallet
    Pallet.where('location_id = ? and available_qty > ?', location.id, 0)
  end

  def unique_combination
    errors.add(:passage, 'location with same combination of id') unless complete_location
  end

  def location_full_name
    "#{passage} - #{slot} - #{level}"
  end

  private

  def complete_location
    Location.where(passage: passage, slot: slot, level: level).empty?
  end
end
