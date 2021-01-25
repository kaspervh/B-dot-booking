require "application_system_test_case"

class Company::FrontpagesTest < ApplicationSystemTestCase
  setup do
    @company_frontpage = company_frontpages(:one)
  end

  test "visiting the index" do
    visit company_frontpages_url
    assert_selector "h1", text: "Company/Frontpages"
  end

  test "creating a Frontpage" do
    visit company_frontpages_url
    click_on "New Company/Frontpage"

    fill_in "Company", with: @company_frontpage.company_id
    click_on "Create Frontpage"

    assert_text "Frontpage was successfully created"
    click_on "Back"
  end

  test "updating a Frontpage" do
    visit company_frontpages_url
    click_on "Edit", match: :first

    fill_in "Company", with: @company_frontpage.company_id
    click_on "Update Frontpage"

    assert_text "Frontpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Frontpage" do
    visit company_frontpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frontpage was successfully destroyed"
  end
end
