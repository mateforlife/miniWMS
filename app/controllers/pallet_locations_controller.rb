class PalletLocationsController < InheritedResources::Base

  private

    def pallet_location_params
      params.require(:pallet_location).permit(:pallet_id, :location_id)
    end
end

