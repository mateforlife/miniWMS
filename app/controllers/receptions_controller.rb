class ReceptionsController < InheritedResources::Base
  before_action :set_reception, only: %i[show edit update destroy]
  before_action :set_scheduling, only: :show

  def index
    @day = selected_date(:day)
    if @day.nil?
      @receptions = Reception.where('created_at BETWEEN ? AND ? ', Time.now.beginning_of_day, Time.now.end_of_day ).order('created_at DESC')
      @day = Time.now.strftime("%d/%m/%Y")
    else
      @receptions = Reception.where('created_at BETWEEN ? AND ? ', @day.beginning_of_day, @day.end_of_day ).order('created_at DESC')
      @day = @day.strftime("%d/%m/%Y")
    end
  end

  private

  def set_reception
    @reception = Reception.find(params[:id])
  end

  def set_scheduling
    @scheduling = Scheduling.find(@reception.scheduling_id)
  end

  def selected_date(symbol)
    params[:search] && params[:search][symbol] ? params[:search][symbol].to_date : Time.now.to_date
  end

  def reception_params
    params.require(:reception).permit(:scheduling_id, :document_number, :origin_place, :vehicle_patent, :reference_text, :comment, :user_id)
  end
end
