class Company::StyleSettingsController < ApplicationController
  before_action :set_company_style_setting, only: [:show, :edit, :update, :destroy]

  # GET /company/style_settings
  # GET /company/style_settings.json
  def index
    @company_style_settings = Company::StyleSetting.all
  end

  # GET /company/style_settings/1
  # GET /company/style_settings/1.json
  def show
  end

  # GET /company/style_settings/new
  def new
    @company_style_setting = Company::StyleSetting.new
  end

  # GET /company/style_settings/1/edit
  def edit
  end

  # POST /company/style_settings
  # POST /company/style_settings.json
  def create
    @company_style_setting = Company::StyleSetting.new(company_style_setting_params)

    respond_to do |format|
      if @company_style_setting.save
        format.html { redirect_to @company_style_setting, notice: 'Style setting was successfully created.' }
        format.json { render :show, status: :created, location: @company_style_setting }
      else
        format.html { render :new }
        format.json { render json: @company_style_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company/style_settings/1
  # PATCH/PUT /company/style_settings/1.json
  def update
    respond_to do |format|
      if @company_style_setting.update(company_style_setting_params)
        format.html { redirect_to @company_style_setting, notice: 'Style setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_style_setting }
      else
        format.html { render :edit }
        format.json { render json: @company_style_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company/style_settings/1
  # DELETE /company/style_settings/1.json
  def destroy
    @company_style_setting.destroy
    respond_to do |format|
      format.html { redirect_to company_style_settings_url, notice: 'Style setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_style_setting
      @company_style_setting = Company::StyleSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_style_setting_params
      params.require(:company_style_setting).permit(:company_id, :background_color, :navbar_color, :header_color, :text_color, :primary_button_color, :secondary_button_color)
    end
end
