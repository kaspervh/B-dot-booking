class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @company = Company.find(params[:company_id])
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @company = Company.find(params[:company_id])
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
    @company = Company.find(params[:company_id])
  end

  # POST /services
  # POST /services.json
  def create
    @company = Company.find(params[:company_id])
    @service = Service.new(service_params)

    if @service.save
      redirect_to company_services_path(@company, @service)
      
    else
      render :new
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    if @service.update(service_params)
      redirect_to @service
    else
      render :edit
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    redirect_to company_services_url(params[:company_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:company_id, :promo_image, :headline, :description, :price, :duration)
    end
end
