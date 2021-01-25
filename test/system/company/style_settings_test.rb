require "application_system_test_case"

class Company::StyleSettingsTest < ApplicationSystemTestCase
  setup do
    @company_style_setting = company_style_settings(:one)
  end

  test "visiting the index" do
    visit company_style_settings_url
    assert_selector "h1", text: "Company/Style Settings"
  end

  test "creating a Style setting" do
    visit company_style_settings_url
    click_on "New Company/Style Setting"

    fill_in "Background color", with: @company_style_setting.background_color
    fill_in "Company", with: @company_style_setting.company_id
    fill_in "Header color", with: @company_style_setting.header_color
    fill_in "Navbar color", with: @company_style_setting.navbar_color
    fill_in "Primary button color", with: @company_style_setting.primary_button_color
    fill_in "Secondary button color", with: @company_style_setting.secondary_button_color
    fill_in "Text color", with: @company_style_setting.text_color
    click_on "Create Style setting"

    assert_text "Style setting was successfully created"
    click_on "Back"
  end

  test "updating a Style setting" do
    visit company_style_settings_url
    click_on "Edit", match: :first

    fill_in "Background color", with: @company_style_setting.background_color
    fill_in "Company", with: @company_style_setting.company_id
    fill_in "Header color", with: @company_style_setting.header_color
    fill_in "Navbar color", with: @company_style_setting.navbar_color
    fill_in "Primary button color", with: @company_style_setting.primary_button_color
    fill_in "Secondary button color", with: @company_style_setting.secondary_button_color
    fill_in "Text color", with: @company_style_setting.text_color
    click_on "Update Style setting"

    assert_text "Style setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Style setting" do
    visit company_style_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Style setting was successfully destroyed"
  end
end
