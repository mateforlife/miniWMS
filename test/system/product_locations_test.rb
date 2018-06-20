require "application_system_test_case"

class ProductLocationsTest < ApplicationSystemTestCase
  setup do
    @product_location = product_locations(:one)
  end

  test "visiting the index" do
    visit product_locations_url
    assert_selector "h1", text: "Product Locations"
  end

  test "creating a Product location" do
    visit product_locations_url
    click_on "New Product Location"

    fill_in "Location", with: @product_location.location_id
    fill_in "Product", with: @product_location.product_id
    click_on "Create Product location"

    assert_text "Product location was successfully created"
    click_on "Back"
  end

  test "updating a Product location" do
    visit product_locations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @product_location.location_id
    fill_in "Product", with: @product_location.product_id
    click_on "Update Product location"

    assert_text "Product location was successfully updated"
    click_on "Back"
  end

  test "destroying a Product location" do
    visit product_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product location was successfully destroyed"
  end
end
