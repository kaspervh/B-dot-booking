require "application_system_test_case"

class WorkPeriodsTest < ApplicationSystemTestCase
  setup do
    @work_period = work_periods(:one)
  end

  test "visiting the index" do
    visit work_periods_url
    assert_selector "h1", text: "Work Periods"
  end

  test "creating a Work period" do
    visit work_periods_url
    click_on "New Work Period"

    fill_in "Company", with: @work_period.company_id
    fill_in "End time", with: @work_period.end_time
    fill_in "Start time", with: @work_period.start_time
    fill_in "User", with: @work_period.user_id
    click_on "Create Work period"

    assert_text "Work period was successfully created"
    click_on "Back"
  end

  test "updating a Work period" do
    visit work_periods_url
    click_on "Edit", match: :first

    fill_in "Company", with: @work_period.company_id
    fill_in "End time", with: @work_period.end_time
    fill_in "Start time", with: @work_period.start_time
    fill_in "User", with: @work_period.user_id
    click_on "Update Work period"

    assert_text "Work period was successfully updated"
    click_on "Back"
  end

  test "destroying a Work period" do
    visit work_periods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work period was successfully destroyed"
  end
end
