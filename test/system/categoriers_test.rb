require "application_system_test_case"

class CategoriersTest < ApplicationSystemTestCase
  setup do
    @categorier = categoriers(:one)
  end

  test "visiting the index" do
    visit categoriers_url
    assert_selector "h1", text: "Categoriers"
  end

  test "should create categorier" do
    visit categoriers_url
    click_on "New categorier"

    fill_in "Name", with: @categorier.name
    click_on "Create Categorier"

    assert_text "Categorier was successfully created"
    click_on "Back"
  end

  test "should update Categorier" do
    visit categorier_url(@categorier)
    click_on "Edit this categorier", match: :first

    fill_in "Name", with: @categorier.name
    click_on "Update Categorier"

    assert_text "Categorier was successfully updated"
    click_on "Back"
  end

  test "should destroy Categorier" do
    visit categorier_url(@categorier)
    click_on "Destroy this categorier", match: :first

    assert_text "Categorier was successfully destroyed"
  end
end
