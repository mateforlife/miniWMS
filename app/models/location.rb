class Location < ApplicationRecord
  belongs_to :passage
  belongs_to :slot
  belongs_to :level
  belongs_to :product
  validate :unique_combination, on: :create

  def unique_combination
    errors.add(:passage_id, 'location with same combination of id') unless complete_location
  end

  def location_full_name
    "#{passage.name} - #{slot.number} - #{level.number}"
  end

  private

    def complete_location
      Location.where(passage_id: passage.id, slot_id: slot.id, level_id: level.id).empty?
    end
end
