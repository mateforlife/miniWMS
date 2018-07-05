class PalletAssignmentsController < InheritedResources::Base
  before_action :set_pallet_params, only: :create
  before_action :update_locations, only: :create

  def create
    @pallet_assignment = PalletAssignment.new(pallet_assignment_params)
    if @pallet_assignment.save
      @last_location.update(available: true)
      @new_location.update(available: false)
      @pallet.update(location_id: @new_location)
      redirect_to @pallet_assignment
    else
      render 'new'
    end
  end

  private

  def update_locations
    @last_location = Location.find(@pallet.location_id)
    @new_location = Location.find(params['pallet_assignment']['location_id'])
  end

  def set_pallet_params
    pallet_number = params['pallet_assignment']['pallet_id']
    @pallet = Pallet.find_by(pallet_number: pallet_number)
    params['pallet_assignment']['pallet_id'] = @pallet.id
  end

  def pallet_assignment_params
    params.require(:pallet_assignment).permit(:pallet_id, :location_id)
  end
end
