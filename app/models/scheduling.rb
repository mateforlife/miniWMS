class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :operation
  belongs_to :door
  validates_presence_of :client_id, :user_id, :operation_id, :observation, :pallets_qty, :date, :door_id
  enum status: %i[pending approved canceled finished]
end
