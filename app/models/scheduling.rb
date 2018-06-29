class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :operation
  belongs_to :door

  validates :client_id, presence: true
  validates :user_id, presence: true
  validates :operation_id, presence: true
  validates :observation, presence: true
  validates :pallets_qty, presence: true
  validates :date, presence: true
  validates :door_id, presence: true

  enum status: %i[pending approved canceled finished]
end
