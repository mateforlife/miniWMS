class PalletsController < InheritedResources::Base
  before_action :set_reception , only: :create
  before_action :set_location, only: :create
  after_action :update_location_status, only: :create

  def create
    @pallet = Pallet.new(pallet_params)
    if @pallet.save
      redirect_to @reception
    else
      render 'new'
    end
  end

  private

  def update_location_status
    @location.update(available: false)
  end

  def storage_locations
    Location.where('available = ? and level > ?', true, 1).order('passage, slot, level ASC')
  end

  def product_location
    storage_locations.find_by(product_id: params['pallet']['product_id'])
  end

  def set_location
    @location = product_location.present? ? product_location : storage_locations.first
  end

  def set_reception
    @reception = Reception.find(params[:reception_id])
  end

  def pallet_params
    params['pallet']['location_id'] ||= @location.id if @location
    params.require(:pallet).permit(:reception_id, :pallet_number, :location_id, :origin_qty, :reserved_qty, :available_qty, :exp_date, :batch, :status, :product_id)
  end
end
