class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :operation
  belongs_to :door
  validates_presence_of :client_id, :user_id, :operation_id, :observation, :pallets_qty, :date, :door_id
  validate :past_date, on: %i[create update]

  def past_date
    errors.add(:date, 'No es posible agendar al pasado') if date.to_s < Time.now.to_s
  end

  enum status: %i[pending approved canceled finished]
end
