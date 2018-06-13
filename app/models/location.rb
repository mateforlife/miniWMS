class Location < ApplicationRecord
  belongs_to :passage
  belongs_to :slot
  belongs_to :level
end
