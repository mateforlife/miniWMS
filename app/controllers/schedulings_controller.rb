class SchedulingsController < ApplicationController
  before_action :set_scheduling, only: %i[show edit update destroy]

  # GET /schedulings
  # GET /schedulings.json
  def index
    @day = selected_date(:day)
    if @day.nil?
      @schedulings = Scheduling.where("status <> ? AND date BETWEEN ? AND ? ", 2, Time.now.beginning_of_day, Time.now.end_of_day ).order("date ASC")
      @day = Time.now.strftime("%d/%m/%Y")
    else
      @schedulings = Scheduling.where("status <> ? AND date BETWEEN ? AND ? ",2 , @day.beginning_of_day, @day.end_of_day ).order("date ASC")
      @day = @day.strftime("%d/%m/%Y")
    end
  end

  # GET /schedulings/1
  # GET /schedulings/1.json
  def show
  end

  # GET /schedulings/new
  def new
    @scheduling = Scheduling.new
  end

  # GET /schedulings/1/edit
  def edit
  end

  def selected_search_time

  end
  
  def default_search_time

  end  
  # POST /schedulings
  # POST /schedulings.json
  def create
    @scheduling = Scheduling.new(scheduling_params)

    respond_to do |format|
      if @scheduling.save
        format.html { redirect_to schedulings_path, notice: 'Agendamiento ingresado exitosamente' }
        format.json { render :show, status: :created, location: @scheduling }
      else
        format.html { render :new }
        format.json { render json: @scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedulings/1
  # PATCH/PUT /schedulings/1.json
  def update
    respond_to do |format|
      if @scheduling.update(scheduling_params)
        format.html { redirect_to schedulings_path, notice: 'Scheduling was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduling }
      else
        format.html { render :edit }
        format.json { render json: @scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedulings/1
  # DELETE /schedulings/1.json
  def destroy
    @scheduling.destroy
    respond_to do |format|
      format.html { redirect_to schedulings_url, notice: 'Scheduling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def selected_date(symbol)
    params[:search] && params[:search][symbol] ? params[:search][symbol].to_date : Time.now.to_date
  end
  # Use callbacks to share common setup or constraints between actions.

  def set_scheduling
    @scheduling = Scheduling.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def scheduling_params
    params.require(:scheduling).permit(:user_id, :client_id, :operation_id, :observation, :pallets_qty, :date, :door_id, :status)
  end

end
