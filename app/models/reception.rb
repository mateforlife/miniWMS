class Reception < ApplicationRecord
  belongs_to :scheduling
  belongs_to :user
  has_many :pallets
end
