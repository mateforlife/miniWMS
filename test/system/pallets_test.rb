require "application_system_test_case"

class PalletsTest < ApplicationSystemTestCase
  setup do
    @pallet = pallets(:one)
  end

  test "visiting the index" do
    visit pallets_url
    assert_selector "h1", text: "Pallets"
  end

  test "creating a Pallet" do
    visit pallets_url
    click_on "New Pallet"

    fill_in "Available Qty", with: @pallet.available_qty
    fill_in "Batch", with: @pallet.batch
    fill_in "Exp Date", with: @pallet.exp_date
    fill_in "Location", with: @pallet.location_id
    fill_in "Origin Qty", with: @pallet.origin_qty
    fill_in "Pallet Number", with: @pallet.pallet_number
    fill_in "Reception", with: @pallet.reception_id
    fill_in "Reserved Qty", with: @pallet.reserved_qty
    fill_in "Status", with: @pallet.status
    click_on "Create Pallet"

    assert_text "Pallet was successfully created"
    click_on "Back"
  end

  test "updating a Pallet" do
    visit pallets_url
    click_on "Edit", match: :first

    fill_in "Available Qty", with: @pallet.available_qty
    fill_in "Batch", with: @pallet.batch
    fill_in "Exp Date", with: @pallet.exp_date
    fill_in "Location", with: @pallet.location_id
    fill_in "Origin Qty", with: @pallet.origin_qty
    fill_in "Pallet Number", with: @pallet.pallet_number
    fill_in "Reception", with: @pallet.reception_id
    fill_in "Reserved Qty", with: @pallet.reserved_qty
    fill_in "Status", with: @pallet.status
    click_on "Update Pallet"

    assert_text "Pallet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pallet" do
    visit pallets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pallet was successfully destroyed"
  end
end
