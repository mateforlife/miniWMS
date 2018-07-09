class PalletLocationsController < InheritedResources::Base

  before_action :set_available_locations, only: :new
  before_action :find_pallet_number, only: :create
  before_action :set_last_location, only: :create
  before_action :set_new_location, only: :create


  def create
    @pallet_location = PalletLocation.new(pallet_location_params)
    if @pallet_location.save
      update_locations_status
      redirect_to @pallet_location
    else
      render 'new'
    end
  end

  private

  def find_pallet_number
    pallet = Pallet.find_by(pallet_number: params['pallet_location']['pallet_id'])
    @pallet_number = pallet.nil? ? nil : pallet
    params['pallet_location']['pallet_id'] = @pallet_number.id
  end

  def update_locations_status
    @last_location.update(available: true)
    @new_location.update(available: false)
  end

  def set_new_location
    @new_location = Location.find(params['pallet_location']['location_id'])
  end

  def set_last_location
    location = PalletLocation.where(pallet_id: params['pallet_location']['pallet_id']).last
    @last_location = location.nil? ? nil : Location.find(location.location_id)
  end

  def set_available_locations
    @available_locations = Location.where(available: true).order('passage, slot, level ASC')
  end

  def pallet_location_params
    params.require(:pallet_location).permit(:pallet_id, :location_id)
  end
end
