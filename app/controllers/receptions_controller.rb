class ReceptionsController < InheritedResources::Base
  before_action :set_reception, only: %i[show edit update destroy]
  before_action :set_scheduling, only: :show

  def index
    @receptions = Reception.all.order('updated_at ASC')
  end

  private

  def set_reception
    @reception = Reception.find(params[:id])
  end

  def set_scheduling 
    @scheduling = Scheduling.find(@reception.scheduling_id)
  end

  def reception_params
    params.require(:reception).permit(:scheduling_id, :document_number, :origin_place, :vehicle_patent, :reference_text, :comment, :user_id)
  end

end
