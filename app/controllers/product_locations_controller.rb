class ProductLocationsController < InheritedResources::Base



  private
    def product_location_params
      params.require(:product_location).permit(:product_id, :location_id)
    end
end

