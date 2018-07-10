require "application_system_test_case"

class PalletLocationsTest < ApplicationSystemTestCase
  setup do
    @pallet_location = pallet_locations(:one)
  end

  test "visiting the index" do
    visit pallet_locations_url
    assert_selector "h1", text: "Pallet Locations"
  end

  test "creating a Pallet location" do
    visit pallet_locations_url
    click_on "New Pallet Location"

    fill_in "Location", with: @pallet_location.location_id
    fill_in "Pallet", with: @pallet_location.pallet_id
    click_on "Create Pallet location"

    assert_text "Pallet location was successfully created"
    click_on "Back"
  end

  test "updating a Pallet location" do
    visit pallet_locations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @pallet_location.location_id
    fill_in "Pallet", with: @pallet_location.pallet_id
    click_on "Update Pallet location"

    assert_text "Pallet location was successfully updated"
    click_on "Back"
  end

  test "destroying a Pallet location" do
    visit pallet_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pallet location was successfully destroyed"
  end
end
