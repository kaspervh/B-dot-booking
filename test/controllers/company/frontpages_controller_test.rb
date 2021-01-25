require "test_helper"

class Company::FrontpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_frontpage = company_frontpages(:one)
  end

  test "should get index" do
    get company_frontpages_url
    assert_response :success
  end

  test "should get new" do
    get new_company_frontpage_url
    assert_response :success
  end

  test "should create company_frontpage" do
    assert_difference('Company::Frontpage.count') do
      post company_frontpages_url, params: { company_frontpage: { company_id: @company_frontpage.company_id } }
    end

    assert_redirected_to company_frontpage_url(Company::Frontpage.last)
  end

  test "should show company_frontpage" do
    get company_frontpage_url(@company_frontpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_frontpage_url(@company_frontpage)
    assert_response :success
  end

  test "should update company_frontpage" do
    patch company_frontpage_url(@company_frontpage), params: { company_frontpage: { company_id: @company_frontpage.company_id } }
    assert_redirected_to company_frontpage_url(@company_frontpage)
  end

  test "should destroy company_frontpage" do
    assert_difference('Company::Frontpage.count', -1) do
      delete company_frontpage_url(@company_frontpage)
    end

    assert_redirected_to company_frontpages_url
  end
end
