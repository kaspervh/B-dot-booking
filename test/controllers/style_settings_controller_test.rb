require "test_helper"

class StyleSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style_setting = style_settings(:one)
  end

  test "should get index" do
    get style_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_style_setting_url
    assert_response :success
  end

  test "should create style_setting" do
    assert_difference('StyleSetting.count') do
      post style_settings_url, params: { style_setting: { background_color: @style_setting.background_color, company_id: @style_setting.company_id, header_color: @style_setting.header_color, navbar_color: @style_setting.navbar_color, primary_button_color: @style_setting.primary_button_color, secondary_button_color: @style_setting.secondary_button_color, text_color: @style_setting.text_color } }
    end

    assert_redirected_to style_setting_url(StyleSetting.last)
  end

  test "should show style_setting" do
    get style_setting_url(@style_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_setting_url(@style_setting)
    assert_response :success
  end

  test "should update style_setting" do
    patch style_setting_url(@style_setting), params: { style_setting: { background_color: @style_setting.background_color, company_id: @style_setting.company_id, header_color: @style_setting.header_color, navbar_color: @style_setting.navbar_color, primary_button_color: @style_setting.primary_button_color, secondary_button_color: @style_setting.secondary_button_color, text_color: @style_setting.text_color } }
    assert_redirected_to style_setting_url(@style_setting)
  end

  test "should destroy style_setting" do
    assert_difference('StyleSetting.count', -1) do
      delete style_setting_url(@style_setting)
    end

    assert_redirected_to style_settings_url
  end
end
