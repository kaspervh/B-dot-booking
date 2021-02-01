require "test_helper"

class FrontpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frontpage = frontpages(:one)
  end

  test "should get index" do
    get frontpages_url
    assert_response :success
  end

  test "should get new" do
    get new_frontpage_url
    assert_response :success
  end

  test "should create frontpage" do
    assert_difference('Frontpage.count') do
      post frontpages_url, params: { frontpage: { about_header: @frontpage.about_header, about_image: @frontpage.about_image, about_text: @frontpage.about_text, company_id: @frontpage.company_id, main_header: @frontpage.main_header, main_image: @frontpage.main_image } }
    end

    assert_redirected_to frontpage_url(Frontpage.last)
  end

  test "should show frontpage" do
    get frontpage_url(@frontpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_frontpage_url(@frontpage)
    assert_response :success
  end

  test "should update frontpage" do
    patch frontpage_url(@frontpage), params: { frontpage: { about_header: @frontpage.about_header, about_image: @frontpage.about_image, about_text: @frontpage.about_text, company_id: @frontpage.company_id, main_header: @frontpage.main_header, main_image: @frontpage.main_image } }
    assert_redirected_to frontpage_url(@frontpage)
  end

  test "should destroy frontpage" do
    assert_difference('Frontpage.count', -1) do
      delete frontpage_url(@frontpage)
    end

    assert_redirected_to frontpages_url
  end
end
