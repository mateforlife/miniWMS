class Location < ApplicationRecord
  belongs_to :passage
  belongs_to :slot
  belongs_to :level

  def location_full_name
    "#{passage.name} - #{slot.number} - #{level.number}"
  end

end
