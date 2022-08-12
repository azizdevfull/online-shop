require "test_helper"

class CategoriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorier = categoriers(:one)
  end

  test "should get index" do
    get categoriers_url
    assert_response :success
  end

  test "should get new" do
    get new_categorier_url
    assert_response :success
  end

  test "should create categorier" do
    assert_difference("Categorier.count") do
      post categoriers_url, params: { categorier: { name: @categorier.name } }
    end

    assert_redirected_to categorier_url(Categorier.last)
  end

  test "should show categorier" do
    get categorier_url(@categorier)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorier_url(@categorier)
    assert_response :success
  end

  test "should update categorier" do
    patch categorier_url(@categorier), params: { categorier: { name: @categorier.name } }
    assert_redirected_to categorier_url(@categorier)
  end

  test "should destroy categorier" do
    assert_difference("Categorier.count", -1) do
      delete categorier_url(@categorier)
    end

    assert_redirected_to categoriers_url
  end
end
