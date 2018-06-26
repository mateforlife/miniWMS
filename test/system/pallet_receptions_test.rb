require "application_system_test_case"

class PalletReceptionsTest < ApplicationSystemTestCase
  setup do
    @pallet_reception = pallet_receptions(:one)
  end

  test "visiting the index" do
    visit pallet_receptions_url
    assert_selector "h1", text: "Pallet Receptions"
  end

  test "creating a Pallet reception" do
    visit pallet_receptions_url
    click_on "New Pallet Reception"

    fill_in "Comments", with: @pallet_reception.comments
    fill_in "Destiny Place", with: @pallet_reception.destiny_place
    fill_in "Document Number", with: @pallet_reception.document_number
    fill_in "Origin Place", with: @pallet_reception.origin_place
    fill_in "Reference Text", with: @pallet_reception.reference_text
    fill_in "Scheduling", with: @pallet_reception.scheduling_id
    fill_in "Status", with: @pallet_reception.status
    fill_in "Vehicle Patent", with: @pallet_reception.vehicle_patent
    click_on "Create Pallet reception"

    assert_text "Pallet reception was successfully created"
    click_on "Back"
  end

  test "updating a Pallet reception" do
    visit pallet_receptions_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @pallet_reception.comments
    fill_in "Destiny Place", with: @pallet_reception.destiny_place
    fill_in "Document Number", with: @pallet_reception.document_number
    fill_in "Origin Place", with: @pallet_reception.origin_place
    fill_in "Reference Text", with: @pallet_reception.reference_text
    fill_in "Scheduling", with: @pallet_reception.scheduling_id
    fill_in "Status", with: @pallet_reception.status
    fill_in "Vehicle Patent", with: @pallet_reception.vehicle_patent
    click_on "Update Pallet reception"

    assert_text "Pallet reception was successfully updated"
    click_on "Back"
  end

  test "destroying a Pallet reception" do
    visit pallet_receptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pallet reception was successfully destroyed"
  end
end
