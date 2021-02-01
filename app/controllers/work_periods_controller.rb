class WorkPeriodsController < ApplicationController
  before_action :set_work_period, only: [:show, :edit, :update, :destroy]

  # GET /work_periods
  # GET /work_periods.json
  def index
    @work_periods = WorkPeriod.all
  end

  # GET /work_periods/1
  # GET /work_periods/1.json
  def show
  end

  # GET /work_periods/new
  def new
    @work_period = WorkPeriod.new
  end

  # GET /work_periods/1/edit
  def edit
  end

  # POST /work_periods
  # POST /work_periods.json
  def create
    @work_period = WorkPeriod.new(work_period_params)

    if @work_period.save
      redirect_to company_work_periods_path(current_company)
    else
      render :new
    end
  end

  # PATCH/PUT /work_periods/1
  # PATCH/PUT /work_periods/1.json
  def update
    
    if @work_period.update(work_period_params)
      redirect_to company_work_period_path(current_company)
    else
      render :edit
    end
  end

  # DELETE /work_periods/1
  # DELETE /work_periods/1.json
  def destroy
    @work_period.destroy
    redirect_to company_work_periods_path(current_company)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_period
      @work_period = WorkPeriod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_period_params
      params.require(:work_period).permit(:company_id, :user_id, :start_time, :end_time)
    end
end
