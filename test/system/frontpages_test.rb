require "application_system_test_case"

class FrontpagesTest < ApplicationSystemTestCase
  setup do
    @frontpage = frontpages(:one)
  end

  test "visiting the index" do
    visit frontpages_url
    assert_selector "h1", text: "Frontpages"
  end

  test "creating a Frontpage" do
    visit frontpages_url
    click_on "New Frontpage"

    fill_in "About header", with: @frontpage.about_header
    fill_in "About image", with: @frontpage.about_image
    fill_in "About text", with: @frontpage.about_text
    fill_in "Company", with: @frontpage.company_id
    fill_in "Main header", with: @frontpage.main_header
    fill_in "Main image", with: @frontpage.main_image
    click_on "Create Frontpage"

    assert_text "Frontpage was successfully created"
    click_on "Back"
  end

  test "updating a Frontpage" do
    visit frontpages_url
    click_on "Edit", match: :first

    fill_in "About header", with: @frontpage.about_header
    fill_in "About image", with: @frontpage.about_image
    fill_in "About text", with: @frontpage.about_text
    fill_in "Company", with: @frontpage.company_id
    fill_in "Main header", with: @frontpage.main_header
    fill_in "Main image", with: @frontpage.main_image
    click_on "Update Frontpage"

    assert_text "Frontpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Frontpage" do
    visit frontpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frontpage was successfully destroyed"
  end
end
