class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :operation
  belongs_to :door
  has_one :reception
  validates_presence_of %i[client_id user_id operation_id observation pallets_qty date door_id], on: :create
  validate :past_date, on: :create

  enum status: %i[pending approved canceled finished in_process]

  def past_date
    errors.add(:date, 'No es posible agendar al pasado') if date.to_s < Time.now.to_s
  end
end
