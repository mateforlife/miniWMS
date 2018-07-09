class Pallet < ApplicationRecord

  has_many :pallet_locations
  has_many :locations, through: :pallet_locations
  belongs_to :reception
  belongs_to :product
  validates :pallet_number, uniqueness: true
  validates_presence_of %i[reception_id pallet_number product_id origin_qty], on: :create
  validate :dates, on: %i[create update]

  enum status: %i[available damaged retained]
 
  def dates
    errors.add(:exp_date, 'Fecha de vencimiento no puede ser mayor a elaboración') if exp_date <= elab_date
    errors.add(:elab_date, 'Fecha de elaboración no puede ser mayor a hoy') if elab_date.to_s > Time.now.to_s
  end
end
