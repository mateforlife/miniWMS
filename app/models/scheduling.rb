class Scheduling < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :operation
  belongs_to :door

  enum status: [:pending, :approved, :canceled]

end
