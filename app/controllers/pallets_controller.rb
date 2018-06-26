class PalletsController < InheritedResources::Base
  before_action :set_reception

  def create
    @pallet = Pallet.new(pallet_params)
    if @pallet.save
      redirect_to @reception
    else
      render "new"
    end
  end

  private

    def set_reception
      @reception = Reception.find(params[:reception_id])
    end

    def pallet_params
      params.require(:pallet).permit(:reception_id, :pallet_number, :location_id, :origin_qty, :reserved_qty, :available_qty, :exp_date, :batch, :status, :product_id)
    end
end
