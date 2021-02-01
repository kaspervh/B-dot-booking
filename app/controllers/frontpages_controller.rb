class FrontpagesController < ApplicationController
  before_action :set_frontpage, only: [:show, :edit, :update, :destroy]

  # GET /frontpages
  # GET /frontpages.json
  def index
    @frontpages = Frontpage.all
  end

  # GET /frontpages/1
  # GET /frontpages/1.json
  def show
    @company = Company.find(params[:company_id])
    @style_settings = StyleSetting.find_by_company_id(params[:company_id])
    @frontpage = Frontpage.find_by_company_id(params[:company_id])
  end

  # GET /frontpages/new
  def new
    @company = Company.find(params[:company_id])
    @frontpage = Frontpage.new
  end

  # GET /frontpages/1/edit
  def edit
  end

  # POST /frontpages
  # POST /frontpages.json
  def create
    @company = Company.find(params[:company_id])
    @frontpage = Frontpage.new(company_id: frontpage_params[:company_id], main_image: frontpage_params[:main_image], main_header: frontpage_params[:main_header], about_image: frontpage_params[:about_image], about_header: frontpage_params[:about_header], about_text: frontpage_params[:about_text])

    if @frontpage.save
      @style_settings = StyleSetting.new(company_id: frontpage_params[:company_id], background_color: frontpage_params[:background_color], navbar_color: frontpage_params[:navbar_color], header_color: frontpage_params[:header_color], text_color: frontpage_params[:text_color], primary_button_color: frontpage_params[:primary_button_color], secondary_button_color: frontpage_params[:secondary_button_color])

      if @style_settings.save
        redirect_to company_frontpage_path(@company, @frontpage)
      else
        @frontpage.destroy
        render :new
      end
    else
      render :new 
    end

  end

  # PATCH/PUT /frontpages/1
  # PATCH/PUT /frontpages/1.json
  def update
    respond_to do |format|
      if @frontpage.update(frontpage_params)
        format.html { redirect_to @frontpage, notice: 'Frontpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @frontpage }
      else
        format.html { render :edit }
        format.json { render json: @frontpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frontpages/1
  # DELETE /frontpages/1.json
  def destroy
    @frontpage.destroy
    respond_to do |format|
      format.html { redirect_to frontpages_url, notice: 'Frontpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frontpage
      @frontpage = Frontpage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frontpage_params
      params.require(:frontpage).permit! #(:company_id, :main_image, :main_header, :about_image, :about_header, :about_text)
    end
end
