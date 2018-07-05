class PalletsController < InheritedResources::Base
  before_action :set_pallet, only: %i[show edit update destroy]
  before_action :set_reception, only: %i[create update]
  before_action :set_location, only: :create
  before_action :origin_qty_to_available_qty, only: %i[create update]

  def index
    @pallets = params[:search].present? ? Pallet.where(pallet_number: params[:search]) : Pallet.all
  end

  def create
    @pallet = Pallet.new(pallet_params)
    if @pallet.save
      @location.update(available: false)
      redirect_to @reception
    else
      render 'new'
    end
  end

  def update
    if @pallet.update(pallet_params)
      redirect_to @reception
    else
      render 'new'
    end
  end

  private

  def set_pallet
    @pallet = Pallet.find(params[:id])
  end

  def origin_qty_to_available_qty
    params['pallet']['available_qty'] = params['pallet']['origin_qty']
    params['pallet']['reserved_qty'] = 0
  end

  def storage_locations
    Location.where('available = ? AND level > ?', true, 1).order('passage, slot, level ASC')
  end

  def product_location
    storage_locations.find_by(product_id: params['pallet']['product_id'])
  end

  def set_location
    @location = product_location.present? ? product_location : storage_locations.first
  end

  def set_reception
    @reception = @pallet.nil? ? Reception.find(params[:reception_id]) : Reception.find(@pallet.reception_id)
  end

  def pallet_params
    if params['pallet']['pallet_number'].present?
      params['pallet']['pallet_number'] = params['pallet']['pallet_number'].upcase
    end  
    params['pallet']['location_id'] ||= @location.id if @location
    params.require(:pallet).permit(:reception_id, :pallet_number, :location_id, :origin_qty, :reserved_qty, :available_qty, :exp_date, :elab_date, :batch, :status, :product_id)
  end
end
