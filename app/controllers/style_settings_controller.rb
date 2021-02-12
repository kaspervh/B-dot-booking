class StyleSettingsController < ApplicationController
  before_action :set_style_setting, only: [:show, :edit, :update, :destroy]

  # GET /style_settings
  # GET /style_settings.json
  def index
    @style_settings = StyleSetting.all
  end

  # GET /style_settings/1
  # GET /style_settings/1.json
  def show
  end

  # GET /style_settings/new
  def new
    @style_setting = StyleSetting.new
  end

  # GET /style_settings/1/edit
  def edit
  end

  # POST /style_settings
  # POST /style_settings.json
  def create
    @style_setting = StyleSetting.new(style_setting_params)

    if @style_setting.save
      redirect_to @style_setting
    else
      render :new 
    end
  end

  # PATCH/PUT /style_settings/1
  # PATCH/PUT /style_settings/1.json
  def update
    if @style_setting.update(style_setting_params)
      redirect_to @style_setting
    else
      render :edit 
    end
  end

  # DELETE /style_settings/1
  # DELETE /style_settings/1.json
  def destroy
    @style_setting.destroy
    
    redirect_to style_settings_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_style_setting
      @style_setting = StyleSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def style_setting_params
      params.require(:style_setting).permit(:company_id, :background_color, :navbar_color, :header_color, :text_color, :primary_button_color, :secondary_button_color)
    end
end
