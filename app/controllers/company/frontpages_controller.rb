class Company::FrontpagesController < ApplicationController
  before_action :set_company_frontpage, only: [:show, :edit, :update, :destroy]

  # GET /company/frontpages
  # GET /company/frontpages.json
  def index
    @company_frontpages = Company::Frontpage.all
  end

  # GET /company/frontpages/1
  # GET /company/frontpages/1.json
  def show
  end

  # GET /company/frontpages/new
  def new
    @company_frontpage = Company::Frontpage.new
  end

  # GET /company/frontpages/1/edit
  def edit
  end

  # POST /company/frontpages
  # POST /company/frontpages.json
  def create
    @company_frontpage = Company::Frontpage.new(company_frontpage_params)

    respond_to do |format|
      if @company_frontpage.save
        format.html { redirect_to @company_frontpage, notice: 'Frontpage was successfully created.' }
        format.json { render :show, status: :created, location: @company_frontpage }
      else
        format.html { render :new }
        format.json { render json: @company_frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company/frontpages/1
  # PATCH/PUT /company/frontpages/1.json
  def update
    respond_to do |format|
      if @company_frontpage.update(company_frontpage_params)
        format.html { redirect_to @company_frontpage, notice: 'Frontpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_frontpage }
      else
        format.html { render :edit }
        format.json { render json: @company_frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company/frontpages/1
  # DELETE /company/frontpages/1.json
  def destroy
    @company_frontpage.destroy
    respond_to do |format|
      format.html { redirect_to company_frontpages_url, notice: 'Frontpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_frontpage
      @company_frontpage = Company::Frontpage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_frontpage_params
      params.require(:company_frontpage).permit(:company_id)
    end
end
