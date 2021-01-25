require "test_helper"

class Company::StyleSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_style_setting = company_style_settings(:one)
  end

  test "should get index" do
    get company_style_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_company_style_setting_url
    assert_response :success
  end

  test "should create company_style_setting" do
    assert_difference('Company::StyleSetting.count') do
      post company_style_settings_url, params: { company_style_setting: { background_color: @company_style_setting.background_color, company_id: @company_style_setting.company_id, header_color: @company_style_setting.header_color, navbar_color: @company_style_setting.navbar_color, primary_button_color: @company_style_setting.primary_button_color, secondary_button_color: @company_style_setting.secondary_button_color, text_color: @company_style_setting.text_color } }
    end

    assert_redirected_to company_style_setting_url(Company::StyleSetting.last)
  end

  test "should show company_style_setting" do
    get company_style_setting_url(@company_style_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_style_setting_url(@company_style_setting)
    assert_response :success
  end

  test "should update company_style_setting" do
    patch company_style_setting_url(@company_style_setting), params: { company_style_setting: { background_color: @company_style_setting.background_color, company_id: @company_style_setting.company_id, header_color: @company_style_setting.header_color, navbar_color: @company_style_setting.navbar_color, primary_button_color: @company_style_setting.primary_button_color, secondary_button_color: @company_style_setting.secondary_button_color, text_color: @company_style_setting.text_color } }
    assert_redirected_to company_style_setting_url(@company_style_setting)
  end

  test "should destroy company_style_setting" do
    assert_difference('Company::StyleSetting.count', -1) do
      delete company_style_setting_url(@company_style_setting)
    end

    assert_redirected_to company_style_settings_url
  end
end
